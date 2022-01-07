; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_reset_versions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_reset_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_net = type { i32 }

@NFSD_NRVERS = common dso_local global i32 0, align 4
@NFSD_TEST = common dso_local global i32 0, align 4
@NFSD_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_reset_versions(%struct.nfsd_net* %0) #0 {
  %2 = alloca %struct.nfsd_net*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nfsd_net* %0, %struct.nfsd_net** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NFSD_NRVERS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @NFSD_TEST, align 4
  %13 = call i64 @nfsd_vers(%struct.nfsd_net* %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %48

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %5

20:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @NFSD_NRVERS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 4
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @NFSD_SET, align 4
  %32 = call i64 @nfsd_vers(%struct.nfsd_net* %29, i32 %30, i32 %31)
  br label %44

33:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %40, %33
  %35 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @NFSD_SET, align 4
  %38 = call i64 @nfsd_minorversion(%struct.nfsd_net* %35, i32 %36, i32 %37)
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %34

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %21

48:                                               ; preds = %15, %21
  ret void
}

declare dso_local i64 @nfsd_vers(%struct.nfsd_net*, i32, i32) #1

declare dso_local i64 @nfsd_minorversion(%struct.nfsd_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
