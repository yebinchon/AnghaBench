; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_fs__mount.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_fs__mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i8*, i32 }

@fs__entries = common dso_local global %struct.fs* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @fs__mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fs__mount(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load %struct.fs*, %struct.fs** @fs__entries, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.fs, %struct.fs* %6, i64 %8
  store %struct.fs* %9, %struct.fs** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @fs__mountpoint(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.fs*, %struct.fs** %4, align 8
  %15 = getelementptr inbounds %struct.fs, %struct.fs* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.fs*, %struct.fs** %4, align 8
  %19 = call i8* @mount_overload(%struct.fs* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.fs*, %struct.fs** %4, align 8
  %22 = getelementptr inbounds %struct.fs, %struct.fs* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @mount(i32* null, i8* %20, i32 %23, i32 0, i32* null)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %38

27:                                               ; preds = %17
  %28 = load %struct.fs*, %struct.fs** %4, align 8
  %29 = call i64 @fs__check_mounts(%struct.fs* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.fs*, %struct.fs** %4, align 8
  %33 = getelementptr inbounds %struct.fs, %struct.fs* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i8* [ %34, %31 ], [ null, %35 ]
  store i8* %37, i8** %2, align 8
  br label %38

38:                                               ; preds = %36, %26, %13
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i64 @fs__mountpoint(i32) #1

declare dso_local i8* @mount_overload(%struct.fs*) #1

declare dso_local i64 @mount(i32*, i8*, i32, i32, i32*) #1

declare dso_local i64 @fs__check_mounts(%struct.fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
