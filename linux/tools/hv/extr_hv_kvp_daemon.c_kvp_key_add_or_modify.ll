; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_key_add_or_modify.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_key_add_or_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.kvp_record* }
%struct.kvp_record = type { i32, i32 }

@HV_KVP_EXCHANGE_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@HV_KVP_EXCHANGE_MAX_VALUE_SIZE = common dso_local global i32 0, align 4
@kvp_file_info = common dso_local global %struct.TYPE_2__* null, align 8
@ENTRIES_PER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, i32)* @kvp_key_add_or_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_key_add_or_modify(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.kvp_record*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @HV_KVP_EXCHANGE_MAX_KEY_SIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @HV_KVP_EXCHANGE_MAX_VALUE_SIZE, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %5
  store i32 1, i32* %6, align 4
  br label %138

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @kvp_update_mem_state(i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load %struct.kvp_record*, %struct.kvp_record** %37, align 8
  store %struct.kvp_record* %38, %struct.kvp_record** %14, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %73, %24
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %51, i64 %53
  %55 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @memcmp(i32* %50, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %73

61:                                               ; preds = %49
  %62 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %62, i64 %64
  %66 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @memcpy(i32 %67, i32* %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @kvp_update_file(i32 %71)
  store i32 0, i32* %6, align 4
  br label %138

73:                                               ; preds = %60
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %45

76:                                               ; preds = %45
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @ENTRIES_PER_BLOCK, align 4
  %79 = load i32, i32* %15, align 4
  %80 = mul nsw i32 %78, %79
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %76
  %83 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %84 = load i32, i32* @ENTRIES_PER_BLOCK, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 8, %85
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = mul i64 %86, %89
  %91 = trunc i64 %90 to i32
  %92 = call %struct.kvp_record* @realloc(%struct.kvp_record* %83, i32 %91)
  store %struct.kvp_record* %92, %struct.kvp_record** %14, align 8
  %93 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %94 = icmp eq %struct.kvp_record* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  store i32 1, i32* %6, align 4
  br label %138

96:                                               ; preds = %82
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %96, %76
  %105 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %105, i64 %107
  %109 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @memcpy(i32 %110, i32* %111, i32 %112)
  %114 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %114, i64 %116
  %118 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @memcpy(i32 %119, i32* %120, i32 %121)
  %123 = load %struct.kvp_record*, %struct.kvp_record** %14, align 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store %struct.kvp_record* %123, %struct.kvp_record** %128, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @kvp_update_file(i32 %136)
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %104, %95, %61, %23
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @kvp_update_mem_state(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kvp_update_file(i32) #1

declare dso_local %struct.kvp_record* @realloc(%struct.kvp_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
