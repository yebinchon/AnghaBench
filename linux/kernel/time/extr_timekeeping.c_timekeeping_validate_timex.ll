; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_validate_timex.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_timekeeping_validate_timex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kernel_timex = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ADJ_ADJTIME = common dso_local global i32 0, align 4
@ADJ_OFFSET_SINGLESHOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADJ_OFFSET_READONLY = common dso_local global i32 0, align 4
@CAP_SYS_TIME = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ADJ_TICK = common dso_local global i32 0, align 4
@USER_HZ = common dso_local global i32 0, align 4
@ADJ_SETOFFSET = common dso_local global i32 0, align 4
@ADJ_NANO = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i64 0, align 8
@ADJ_FREQUENCY = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@LLONG_MIN = common dso_local global i32 0, align 4
@PPM_SCALE = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__kernel_timex*)* @timekeeping_validate_timex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timekeeping_validate_timex(%struct.__kernel_timex* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__kernel_timex*, align 8
  store %struct.__kernel_timex* %0, %struct.__kernel_timex** %3, align 8
  %4 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %5 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @ADJ_ADJTIME, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %12 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ADJ_OFFSET_SINGLESHOT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %159

20:                                               ; preds = %10
  %21 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %22 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ADJ_OFFSET_READONLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @CAP_SYS_TIME, align 4
  %29 = call i32 @capable(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %159

34:                                               ; preds = %27, %20
  br label %72

35:                                               ; preds = %1
  %36 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %37 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @CAP_SYS_TIME, align 4
  %42 = call i32 @capable(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @EPERM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %159

47:                                               ; preds = %40, %35
  %48 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %49 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ADJ_TICK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %56 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @USER_HZ, align 4
  %59 = sdiv i32 900000, %58
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %63 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @USER_HZ, align 4
  %66 = sdiv i32 1100000, %65
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61, %54
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %159

71:                                               ; preds = %61, %47
  br label %72

72:                                               ; preds = %71, %34
  %73 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %74 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ADJ_SETOFFSET, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %125

79:                                               ; preds = %72
  %80 = load i32, i32* @CAP_SYS_TIME, align 4
  %81 = call i32 @capable(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @EPERM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %159

86:                                               ; preds = %79
  %87 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %88 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %159

95:                                               ; preds = %86
  %96 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %97 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ADJ_NANO, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %95
  %103 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %104 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @NSEC_PER_SEC, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %159

112:                                              ; preds = %102
  br label %124

113:                                              ; preds = %95
  %114 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %115 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @USEC_PER_SEC, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %159

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %112
  br label %125

125:                                              ; preds = %124, %72
  %126 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %127 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ADJ_FREQUENCY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %158

132:                                              ; preds = %125
  %133 = load i32, i32* @BITS_PER_LONG, align 4
  %134 = icmp eq i32 %133, 64
  br i1 %134, label %135, label %158

135:                                              ; preds = %132
  %136 = load i32, i32* @LLONG_MIN, align 4
  %137 = load i32, i32* @PPM_SCALE, align 4
  %138 = sdiv i32 %136, %137
  %139 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %140 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp sgt i32 %138, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %159

146:                                              ; preds = %135
  %147 = load i32, i32* @LLONG_MAX, align 4
  %148 = load i32, i32* @PPM_SCALE, align 4
  %149 = sdiv i32 %147, %148
  %150 = load %struct.__kernel_timex*, %struct.__kernel_timex** %3, align 8
  %151 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %159

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157, %132, %125
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %154, %143, %120, %109, %92, %83, %68, %44, %31, %17
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
