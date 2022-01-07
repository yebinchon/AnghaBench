; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_tietags_compare.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_tietags_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.sctp_association*, %struct.sctp_association*)* @sctp_tietags_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @sctp_tietags_compare(%struct.sctp_association* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  %6 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %7 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %2
  %16 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %17 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %15
  %26 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %29, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %37 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %41 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i8 65, i8* %3, align 1
  br label %128

46:                                               ; preds = %35, %25, %15, %2
  %47 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %48 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %52 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %46
  %57 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %58 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %62 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %60, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %56
  %67 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %68 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 0, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %56
  store i8 66, i8* %3, align 1
  br label %128

73:                                               ; preds = %66, %46
  %74 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %75 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %79 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %77, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %73
  %84 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %85 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %89 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  store i8 68, i8* %3, align 1
  br label %128

94:                                               ; preds = %83, %73
  %95 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %96 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %100 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %98, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %94
  %105 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %106 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %110 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %108, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %104
  %115 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %116 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 0, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %122 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 0, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i8 67, i8* %3, align 1
  br label %128

127:                                              ; preds = %120, %114, %104, %94
  store i8 69, i8* %3, align 1
  br label %128

128:                                              ; preds = %127, %126, %93, %72, %45
  %129 = load i8, i8* %3, align 1
  ret i8 %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
