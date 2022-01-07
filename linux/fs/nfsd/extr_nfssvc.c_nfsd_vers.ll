; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_vers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_vers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_net = type { i32* }

@NFSD_MINVERS = common dso_local global i32 0, align 4
@NFSD_NRVERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_vers(%struct.nfsd_net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfsd_net* %0, %struct.nfsd_net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NFSD_MINVERS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NFSD_NRVERS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %66

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %65 [
    i32 129, label %18
    i32 130, label %33
    i32 128, label %48
    i32 131, label %62
  ]

18:                                               ; preds = %16
  %19 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @nfsd_support_version(i32 %24)
  %26 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %27 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  br label %32

32:                                               ; preds = %23, %18
  br label %65

33:                                               ; preds = %16
  %34 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %35 = call i32 @nfsd_netns_init_versions(%struct.nfsd_net* %34)
  %36 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %37 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %42 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %33
  br label %65

48:                                               ; preds = %16
  %49 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %50 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %55 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %16, %61
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @nfsd_support_version(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %16, %47, %32
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %62, %53, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @nfsd_support_version(i32) #1

declare dso_local i32 @nfsd_netns_init_versions(%struct.nfsd_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
