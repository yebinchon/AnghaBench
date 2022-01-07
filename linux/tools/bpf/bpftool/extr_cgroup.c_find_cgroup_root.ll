; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_find_cgroup_root.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cgroup.c_find_cgroup_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntent = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @find_cgroup_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_cgroup_root() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.mntent*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %30

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %26, %8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.mntent* @getmntent(i32* %10)
  store %struct.mntent* %11, %struct.mntent** %2, align 8
  %12 = icmp ne %struct.mntent* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.mntent*, %struct.mntent** %2, align 8
  %15 = getelementptr inbounds %struct.mntent, %struct.mntent* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strcmp(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @fclose(i32* %20)
  %22 = load %struct.mntent*, %struct.mntent** %2, align 8
  %23 = getelementptr inbounds %struct.mntent, %struct.mntent* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @strdup(i32 %24)
  store i8* %25, i8** %1, align 8
  br label %30

26:                                               ; preds = %13
  br label %9

27:                                               ; preds = %9
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @fclose(i32* %28)
  store i8* null, i8** %1, align 8
  br label %30

30:                                               ; preds = %27, %19, %7
  %31 = load i8*, i8** %1, align 8
  ret i8* %31
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.mntent* @getmntent(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
