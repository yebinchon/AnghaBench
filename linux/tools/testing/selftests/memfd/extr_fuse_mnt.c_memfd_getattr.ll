; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_mnt.c_memfd_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_mnt.c_memfd_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@memfd_path = common dso_local global i8* null, align 8
@S_IFREG = common dso_local global i32 0, align 4
@memfd_content = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*)* @memfd_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memfd_getattr(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %6 = load %struct.stat*, %struct.stat** %5, align 8
  %7 = call i32 @memset(%struct.stat* %6, i32 0, i32 12)
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @S_IFDIR, align 4
  %13 = or i32 %12, 493
  %14 = load %struct.stat*, %struct.stat** %5, align 8
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.stat*, %struct.stat** %5, align 8
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 1
  store i32 2, i32* %17, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** @memfd_path, align 8
  %21 = call i32 @strcmp(i8* %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @S_IFREG, align 4
  %25 = or i32 %24, 292
  %26 = load %struct.stat*, %struct.stat** %5, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.stat*, %struct.stat** %5, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* @memfd_content, align 4
  %31 = call i32 @strlen(i32 %30)
  %32 = load %struct.stat*, %struct.stat** %5, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %37

34:                                               ; preds = %18
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %11
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
