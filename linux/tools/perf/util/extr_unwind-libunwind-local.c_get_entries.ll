; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c_get_entries.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c_get_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.unwind_info = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@LIBUNWIND__ARCH_REG_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WARNING: ui->thread is NULL\00", align 1
@UNW_REG_IP = common dso_local global i32 0, align 4
@callchain_param = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ORDER_CALLER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_info*, i32, i8*, i32)* @get_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_entries(%struct.unwind_info* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.unwind_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.unwind_info* %0, %struct.unwind_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  store i32 0, i32* %16, align 4
  %23 = load %struct.unwind_info*, %struct.unwind_info** %6, align 8
  %24 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* @LIBUNWIND__ARCH_REG_IP, align 4
  %28 = call i32 @perf_reg_value(i64* %10, i32* %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %147

33:                                               ; preds = %4
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %16, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i64, i64* %22, i64 %37
  store i64 %34, i64* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %101

42:                                               ; preds = %33
  %43 = load %struct.unwind_info*, %struct.unwind_info** %6, align 8
  %44 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ONCE(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.unwind_info*, %struct.unwind_info** %6, align 8
  %51 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %147

60:                                               ; preds = %42
  %61 = load i32*, i32** %13, align 8
  %62 = load %struct.unwind_info*, %struct.unwind_info** %6, align 8
  %63 = call i32 @unw_init_remote(i32* %14, i32* %61, %struct.unwind_info* %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @display_error(i32 %67)
  br label %69

69:                                               ; preds = %66, %60
  br label %70

70:                                               ; preds = %96, %69
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = call i64 @unw_step(i32* %14)
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br label %80

80:                                               ; preds = %76, %73, %70
  %81 = phi i1 [ false, %73 ], [ false, %70 ], [ %79, %76 ]
  br i1 %81, label %82, label %99

82:                                               ; preds = %80
  %83 = load i32, i32* @UNW_REG_IP, align 4
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %22, i64 %85
  %87 = call i32 @unw_get_reg(i32* %14, i32 %83, i64* %86)
  %88 = call i64 @unw_is_signal_frame(i32* %14)
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %22, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %90, %82
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %70

99:                                               ; preds = %80
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %99, %33
  store i32 0, i32* %16, align 4
  br label %102

102:                                              ; preds = %142, %101
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i1 [ false, %102 ], [ %109, %106 ]
  br i1 %111, label %112, label %145

112:                                              ; preds = %110
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %18, align 4
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @callchain_param, i32 0, i32 0), align 8
  %115 = load i64, i64* @ORDER_CALLER, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %16, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %18, align 4
  br label %122

122:                                              ; preds = %117, %112
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %22, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %122
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %22, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.unwind_info*, %struct.unwind_info** %6, align 8
  %134 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @entry(i64 %132, %struct.TYPE_7__* %135, i32 %136, i8* %137)
  br label %140

139:                                              ; preds = %122
  br label %140

140:                                              ; preds = %139, %128
  %141 = phi i32 [ %138, %128 ], [ 0, %139 ]
  store i32 %141, i32* %15, align 4
  br label %142

142:                                              ; preds = %140
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  br label %102

145:                                              ; preds = %110
  %146 = load i32, i32* %15, align 4
  store i32 %146, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %147

147:                                              ; preds = %145, %59, %31
  %148 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @perf_reg_value(i64*, i32*, i32) #2

declare dso_local i32 @WARN_ONCE(i32, i8*) #2

declare dso_local i32 @unw_init_remote(i32*, i32*, %struct.unwind_info*) #2

declare dso_local i32 @display_error(i32) #2

declare dso_local i64 @unw_step(i32*) #2

declare dso_local i32 @unw_get_reg(i32*, i32, i64*) #2

declare dso_local i64 @unw_is_signal_frame(i32*) #2

declare dso_local i32 @entry(i64, %struct.TYPE_7__*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
