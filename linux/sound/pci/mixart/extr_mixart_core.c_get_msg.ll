; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_core.c_get_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_core.c_get_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mixart_msg = type { i64, i64, %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@MSG_DESCRIPTOR_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"problem with response size = %d\0A\00", align 1
@MSG_HEADER_SIZE = common dso_local global i64 0, align 8
@MSG_OUTBOUND_FREE_HEAD = common dso_local global i64 0, align 8
@MSG_OUTBOUND_FREE_STACK = common dso_local global i64 0, align 8
@MSG_BOUND_STACK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixart_mgr*, %struct.mixart_msg*, i64)* @get_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_msg(%struct.mixart_mgr* %0, %struct.mixart_msg* %1, i64 %2) #0 {
  %4 = alloca %struct.mixart_mgr*, align 8
  %5 = alloca %struct.mixart_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %4, align 8
  store %struct.mixart_msg* %1, %struct.mixart_msg** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %12 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  store i32 0, i32* %9, align 4
  %14 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @MIXART_MEM(%struct.mixart_mgr* %14, i64 %15)
  %17 = call i8* @readl_be(i32 %16)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %20, 4
  %22 = call i32 @MIXART_MEM(%struct.mixart_mgr* %19, i64 %21)
  %23 = call i8* @readl_be(i32 %22)
  %24 = load %struct.mixart_msg*, %struct.mixart_msg** %5, align 8
  %25 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, 8
  %29 = call i32 @MIXART_MEM(%struct.mixart_mgr* %26, i64 %28)
  %30 = call i8* @readl_be(i32 %29)
  %31 = load %struct.mixart_msg*, %struct.mixart_msg** %5, align 8
  %32 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add nsw i64 %35, 12
  %37 = call i32 @MIXART_MEM(%struct.mixart_mgr* %34, i64 %36)
  %38 = call i8* @readl_be(i32 %37)
  %39 = load %struct.mixart_msg*, %struct.mixart_msg** %5, align 8
  %40 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @MSG_DESCRIPTOR_SIZE, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %3
  %46 = load %struct.mixart_msg*, %struct.mixart_msg** %5, align 8
  %47 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @MSG_DESCRIPTOR_SIZE, align 8
  %51 = sub nsw i64 %49, %50
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45, %3
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %57 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %60)
  br label %145

62:                                               ; preds = %45
  %63 = load i64, i64* @MSG_DESCRIPTOR_SIZE, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load %struct.mixart_msg*, %struct.mixart_msg** %5, align 8
  %67 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @MSG_HEADER_SIZE, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @MIXART_MEM(%struct.mixart_mgr* %69, i64 %72)
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @memcpy_fromio(i64 %68, i32 %73, i64 %74)
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.mixart_msg*, %struct.mixart_msg** %5, align 8
  %78 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %8, align 8
  %80 = sdiv i64 %79, 4
  store i64 %80, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %103, %62
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = load i64, i64* %8, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %81
  %87 = load %struct.mixart_msg*, %struct.mixart_msg** %5, align 8
  %88 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @be32_to_cpu(i32 %94)
  %96 = load %struct.mixart_msg*, %struct.mixart_msg** %5, align 8
  %97 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i64*
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 %95, i64* %102, align 8
  br label %103

103:                                              ; preds = %86
  %104 = load i32, i32* %10, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %81

106:                                              ; preds = %81
  %107 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %108 = load i64, i64* @MSG_OUTBOUND_FREE_HEAD, align 8
  %109 = call i32 @MIXART_MEM(%struct.mixart_mgr* %107, i64 %108)
  %110 = call i8* @readl_be(i32 %109)
  %111 = ptrtoint i8* %110 to i64
  store i64 %111, i64* %7, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* @MSG_OUTBOUND_FREE_STACK, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %106
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @MSG_OUTBOUND_FREE_STACK, align 8
  %118 = load i64, i64* @MSG_BOUND_STACK_SIZE, align 8
  %119 = add nsw i64 %117, %118
  %120 = icmp sge i64 %116, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115, %106
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %9, align 4
  br label %145

124:                                              ; preds = %115
  %125 = load i64, i64* %6, align 8
  %126 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %127 = load i64, i64* %7, align 8
  %128 = call i32 @MIXART_MEM(%struct.mixart_mgr* %126, i64 %127)
  %129 = call i32 @writel_be(i64 %125, i32 %128)
  %130 = load i64, i64* %7, align 8
  %131 = add nsw i64 %130, 4
  store i64 %131, i64* %7, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* @MSG_OUTBOUND_FREE_STACK, align 8
  %134 = load i64, i64* @MSG_BOUND_STACK_SIZE, align 8
  %135 = add nsw i64 %133, %134
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %124
  %138 = load i64, i64* @MSG_OUTBOUND_FREE_STACK, align 8
  store i64 %138, i64* %7, align 8
  br label %139

139:                                              ; preds = %137, %124
  %140 = load i64, i64* %7, align 8
  %141 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %142 = load i64, i64* @MSG_OUTBOUND_FREE_HEAD, align 8
  %143 = call i32 @MIXART_MEM(%struct.mixart_mgr* %141, i64 %142)
  %144 = call i32 @writel_be(i64 %140, i32 %143)
  br label %145

145:                                              ; preds = %139, %121, %53
  %146 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %147 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %146, i32 0, i32 0
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load i32, i32* %9, align 4
  ret i32 %149
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @readl_be(i32) #1

declare dso_local i32 @MIXART_MEM(%struct.mixart_mgr*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @memcpy_fromio(i64, i32, i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @writel_be(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
