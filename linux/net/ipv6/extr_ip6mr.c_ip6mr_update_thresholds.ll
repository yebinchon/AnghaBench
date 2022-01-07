; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_update_thresholds.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_update_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32 }
%struct.mr_mfc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i32 }

@MAXMIFS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mr_table*, %struct.mr_mfc*, i8*)* @ip6mr_update_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6mr_update_thresholds(%struct.mr_table* %0, %struct.mr_mfc* %1, i8* %2) #0 {
  %4 = alloca %struct.mr_table*, align 8
  %5 = alloca %struct.mr_mfc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.mr_table* %0, %struct.mr_table** %4, align 8
  store %struct.mr_mfc* %1, %struct.mr_mfc** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @MAXMIFS, align 4
  %9 = load %struct.mr_mfc*, %struct.mr_mfc** %5, align 8
  %10 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %8, i32* %12, align 8
  %13 = load %struct.mr_mfc*, %struct.mr_mfc** %5, align 8
  %14 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.mr_mfc*, %struct.mr_mfc** %5, align 8
  %18 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @MAXMIFS, align 4
  %23 = call i32 @memset(i8* %21, i32 255, i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %95, %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %27 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %98

30:                                               ; preds = %24
  %31 = load %struct.mr_table*, %struct.mr_table** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @VIF_EXISTS(%struct.mr_table* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %94

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %35
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp slt i32 %49, 255
  br i1 %50, label %51, label %94

51:                                               ; preds = %43
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load %struct.mr_mfc*, %struct.mr_mfc** %5, align 8
  %58 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 %56, i8* %64, align 1
  %65 = load %struct.mr_mfc*, %struct.mr_mfc** %5, align 8
  %66 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %51
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.mr_mfc*, %struct.mr_mfc** %5, align 8
  %75 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 8
  br label %78

78:                                               ; preds = %72, %51
  %79 = load %struct.mr_mfc*, %struct.mr_mfc** %5, align 8
  %80 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  %89 = load %struct.mr_mfc*, %struct.mr_mfc** %5, align 8
  %90 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %78
  br label %94

94:                                               ; preds = %93, %43, %35, %30
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %24

98:                                               ; preds = %24
  %99 = load i32, i32* @jiffies, align 4
  %100 = load %struct.mr_mfc*, %struct.mr_mfc** %5, align 8
  %101 = getelementptr inbounds %struct.mr_mfc, %struct.mr_mfc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i32 %99, i32* %103, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @VIF_EXISTS(%struct.mr_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
