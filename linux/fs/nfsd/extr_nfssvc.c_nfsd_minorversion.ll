; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_minorversion.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_minorversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_net = type { i32* }

@NFSD_SUPPORTED_MINOR_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_minorversion(%struct.nfsd_net* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd_net*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nfsd_net* %0, %struct.nfsd_net** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @NFSD_SUPPORTED_MINOR_VERSION, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 131
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %76

15:                                               ; preds = %11, %3
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %75 [
    i32 129, label %17
    i32 130, label %33
    i32 128, label %49
    i32 131, label %64
  ]

17:                                               ; preds = %15
  %18 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %19 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %24 = call i32 @nfsd_vers(%struct.nfsd_net* %23, i32 4, i32 129)
  %25 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %26 = call i32 @nfsd_vers(%struct.nfsd_net* %25, i32 4, i32 128)
  %27 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %28 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %26, i32* %31, align 4
  br label %32

32:                                               ; preds = %22, %17
  br label %75

33:                                               ; preds = %15
  %34 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %35 = call i32 @nfsd_netns_init_versions(%struct.nfsd_net* %34)
  %36 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %37 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %42 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 0, i32* %45, align 4
  %46 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %47 = call i32 @nfsd_adjust_nfsd_versions4(%struct.nfsd_net* %46)
  br label %48

48:                                               ; preds = %40, %33
  br label %75

49:                                               ; preds = %15
  %50 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %51 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %56 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %4, align 4
  br label %76

61:                                               ; preds = %49
  %62 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %63 = call i32 @nfsd_vers(%struct.nfsd_net* %62, i32 4, i32 128)
  store i32 %63, i32* %4, align 4
  br label %76

64:                                               ; preds = %15
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @NFSD_SUPPORTED_MINOR_VERSION, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %70 = call i32 @nfsd_vers(%struct.nfsd_net* %69, i32 4, i32 131)
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ false, %64 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %15, %48, %32
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %72, %61, %54, %14
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @nfsd_vers(%struct.nfsd_net*, i32, i32) #1

declare dso_local i32 @nfsd_netns_init_versions(%struct.nfsd_net*) #1

declare dso_local i32 @nfsd_adjust_nfsd_versions4(%struct.nfsd_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
