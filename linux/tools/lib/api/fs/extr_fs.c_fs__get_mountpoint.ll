; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_fs__get_mountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_fs__get_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fs*)* @fs__get_mountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fs__get_mountpoint(%struct.fs* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fs*, align 8
  store %struct.fs* %0, %struct.fs** %3, align 8
  %4 = load %struct.fs*, %struct.fs** %3, align 8
  %5 = call i64 @fs__env_override(%struct.fs* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.fs*, %struct.fs** %3, align 8
  %9 = getelementptr inbounds %struct.fs, %struct.fs* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %2, align 8
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.fs*, %struct.fs** %3, align 8
  %13 = call i64 @fs__check_mounts(%struct.fs* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.fs*, %struct.fs** %3, align 8
  %17 = getelementptr inbounds %struct.fs, %struct.fs* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %28

19:                                               ; preds = %11
  %20 = load %struct.fs*, %struct.fs** %3, align 8
  %21 = call i64 @fs__read_mounts(%struct.fs* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.fs*, %struct.fs** %3, align 8
  %25 = getelementptr inbounds %struct.fs, %struct.fs* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %2, align 8
  br label %28

27:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %23, %15, %7
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i64 @fs__env_override(%struct.fs*) #1

declare dso_local i64 @fs__check_mounts(%struct.fs*) #1

declare dso_local i64 @fs__read_mounts(%struct.fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
