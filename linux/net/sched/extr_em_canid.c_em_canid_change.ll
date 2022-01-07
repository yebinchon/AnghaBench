; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_canid.c_em_canid_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_canid.c_em_canid_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_ematch = type { i32, i64 }
%struct.can_filter = type { i32, i32 }
%struct.canid_match = type { i32, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EM_CAN_RULES_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i8*, i32, %struct.tcf_ematch*)* @em_canid_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_canid_change(%struct.net* %0, i8* %1, i32 %2, %struct.tcf_ematch* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcf_ematch*, align 8
  %10 = alloca %struct.can_filter*, align 8
  %11 = alloca %struct.canid_match*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tcf_ematch* %3, %struct.tcf_ematch** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.can_filter*
  store %struct.can_filter* %14, %struct.can_filter** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %161

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = urem i64 %22, 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %161

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* @EM_CAN_RULES_MAX, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %161

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 32, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.canid_match* @kzalloc(i32 %42, i32 %43)
  store %struct.canid_match* %44, %struct.canid_match** %11, align 8
  %45 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %46 = icmp ne %struct.canid_match* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %161

50:                                               ; preds = %38
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %56 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %91, %50
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %60 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %57
  %64 = load %struct.can_filter*, %struct.can_filter** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %64, i64 %66
  %68 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CAN_EFF_FLAG, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %63
  %74 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %75 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %78 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.can_filter*, %struct.can_filter** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %81, i64 %83
  %85 = call i32 @memcpy(i64 %80, %struct.can_filter* %84, i32 8)
  %86 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %87 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %73, %63
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %57

94:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %147, %94
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %98 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %150

101:                                              ; preds = %95
  %102 = load %struct.can_filter*, %struct.can_filter** %10, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %102, i64 %104
  %106 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CAN_EFF_FLAG, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %146, label %111

111:                                              ; preds = %101
  %112 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %113 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %116 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %120 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = load %struct.can_filter*, %struct.can_filter** %10, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %123, i64 %125
  %127 = call i32 @memcpy(i64 %122, %struct.can_filter* %126, i32 8)
  %128 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %129 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %129, align 8
  %132 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %133 = load %struct.can_filter*, %struct.can_filter** %10, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %133, i64 %135
  %137 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.can_filter*, %struct.can_filter** %10, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %139, i64 %141
  %143 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @em_canid_sff_match_add(%struct.canid_match* %132, i32 %138, i32 %144)
  br label %146

146:                                              ; preds = %111, %101
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %95

150:                                              ; preds = %95
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 32, %152
  %154 = trunc i64 %153 to i32
  %155 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %156 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.canid_match*, %struct.canid_match** %11, align 8
  %158 = ptrtoint %struct.canid_match* %157 to i64
  %159 = load %struct.tcf_ematch*, %struct.tcf_ematch** %9, align 8
  %160 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %150, %47, %35, %25, %17
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local %struct.canid_match* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64, %struct.can_filter*, i32) #1

declare dso_local i32 @em_canid_sff_match_add(%struct.canid_match*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
