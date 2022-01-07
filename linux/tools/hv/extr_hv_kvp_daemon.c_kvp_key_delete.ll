; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_key_delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_key_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.kvp_record* }
%struct.kvp_record = type { i32, i32 }

@kvp_file_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @kvp_key_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_key_delete(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvp_record*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @kvp_update_mem_state(i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.kvp_record*, %struct.kvp_record** %25, align 8
  store %struct.kvp_record* %26, %struct.kvp_record** %12, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %108, %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %111

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.kvp_record*, %struct.kvp_record** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %33, i64 %35
  %37 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @memcmp(i32* %32, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %108

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @kvp_update_file(i32 %56)
  store i32 0, i32* %4, align 4
  br label %112

58:                                               ; preds = %43
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %95, %58
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %62
  %67 = load %struct.kvp_record*, %struct.kvp_record** %12, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %67, i64 %69
  %71 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.kvp_record*, %struct.kvp_record** %12, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %73, i64 %75
  %77 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strcpy(i32 %72, i32 %78)
  %80 = load %struct.kvp_record*, %struct.kvp_record** %12, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %80, i64 %82
  %84 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.kvp_record*, %struct.kvp_record** %12, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %86, i64 %88
  %90 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @strcpy(i32 %85, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %66
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %62

98:                                               ; preds = %62
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @kvp_update_file(i32 %106)
  store i32 0, i32* %4, align 4
  br label %112

108:                                              ; preds = %42
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %27

111:                                              ; preds = %27
  store i32 1, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %98, %48
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @kvp_update_mem_state(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @kvp_update_file(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
