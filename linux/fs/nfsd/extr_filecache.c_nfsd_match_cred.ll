; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_match_cred.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_match_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.cred*)* @nfsd_match_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_match_cred(%struct.cred* %0, %struct.cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  %7 = load %struct.cred*, %struct.cred** %4, align 8
  %8 = getelementptr inbounds %struct.cred, %struct.cred* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cred*, %struct.cred** %5, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @uid_eq(i32 %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.cred*, %struct.cred** %4, align 8
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cred*, %struct.cred** %5, align 8
  %21 = getelementptr inbounds %struct.cred, %struct.cred* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @gid_eq(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %94

26:                                               ; preds = %16
  %27 = load %struct.cred*, %struct.cred** %4, align 8
  %28 = getelementptr inbounds %struct.cred, %struct.cred* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp eq %struct.TYPE_2__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.cred*, %struct.cred** %5, align 8
  %33 = getelementptr inbounds %struct.cred, %struct.cred* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp eq %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %31, %26
  %37 = load %struct.cred*, %struct.cred** %4, align 8
  %38 = getelementptr inbounds %struct.cred, %struct.cred* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.cred*, %struct.cred** %5, align 8
  %41 = getelementptr inbounds %struct.cred, %struct.cred* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp eq %struct.TYPE_2__* %39, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %94

45:                                               ; preds = %31
  %46 = load %struct.cred*, %struct.cred** %4, align 8
  %47 = getelementptr inbounds %struct.cred, %struct.cred* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cred*, %struct.cred** %5, align 8
  %52 = getelementptr inbounds %struct.cred, %struct.cred* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %94

58:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %90, %58
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.cred*, %struct.cred** %4, align 8
  %62 = getelementptr inbounds %struct.cred, %struct.cred* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %59
  %68 = load %struct.cred*, %struct.cred** %4, align 8
  %69 = getelementptr inbounds %struct.cred, %struct.cred* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cred*, %struct.cred** %5, align 8
  %78 = getelementptr inbounds %struct.cred, %struct.cred* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @gid_eq(i32 %76, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %94

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %59

93:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %88, %57, %36, %25, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
