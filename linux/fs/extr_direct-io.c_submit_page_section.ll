; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_submit_page_section.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_submit_page_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i64 }
%struct.dio_submit = type { i32, i32, i64, i32, i32, i32, %struct.page*, i64, i64 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32 }

@REQ_OP_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.dio_submit*, %struct.page*, i32, i32, i64, %struct.buffer_head*)* @submit_page_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_page_section(%struct.dio* %0, %struct.dio_submit* %1, %struct.page* %2, i32 %3, i32 %4, i64 %5, %struct.buffer_head* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dio*, align 8
  %10 = alloca %struct.dio_submit*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  store %struct.dio* %0, %struct.dio** %9, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %10, align 8
  store %struct.page* %2, %struct.page** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store %struct.buffer_head* %6, %struct.buffer_head** %15, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.dio*, %struct.dio** %9, align 8
  %18 = getelementptr inbounds %struct.dio, %struct.dio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REQ_OP_WRITE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @task_io_account_write(i32 %23)
  br label %25

25:                                               ; preds = %22, %7
  %26 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %27 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %26, i32 0, i32 6
  %28 = load %struct.page*, %struct.page** %27, align 8
  %29 = load %struct.page*, %struct.page** %11, align 8
  %30 = icmp eq %struct.page* %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  %32 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %33 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %36 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %34, %37
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %31
  %42 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %43 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %46 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %49 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %44, %52
  %54 = load i64, i64* %14, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %41
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %59 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %107

62:                                               ; preds = %41, %31, %25
  %63 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %64 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %63, i32 0, i32 6
  %65 = load %struct.page*, %struct.page** %64, align 8
  %66 = icmp ne %struct.page* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.dio*, %struct.dio** %9, align 8
  %69 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %71 = call i32 @dio_send_cur_page(%struct.dio* %68, %struct.dio_submit* %69, %struct.buffer_head* %70)
  store i32 %71, i32* %16, align 4
  %72 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %73 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %72, i32 0, i32 6
  %74 = load %struct.page*, %struct.page** %73, align 8
  %75 = call i32 @put_page(%struct.page* %74)
  %76 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %77 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %76, i32 0, i32 6
  store %struct.page* null, %struct.page** %77, align 8
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %8, align 4
  br label %134

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %62
  %84 = load %struct.page*, %struct.page** %11, align 8
  %85 = call i32 @get_page(%struct.page* %84)
  %86 = load %struct.page*, %struct.page** %11, align 8
  %87 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %88 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %87, i32 0, i32 6
  store %struct.page* %86, %struct.page** %88, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %91 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %94 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i64, i64* %14, align 8
  %96 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %97 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %99 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %102 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = shl i32 %100, %103
  %105 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %106 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %83, %56
  %108 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %109 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %107
  %113 = load %struct.dio*, %struct.dio** %9, align 8
  %114 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %115 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %116 = call i32 @dio_send_cur_page(%struct.dio* %113, %struct.dio_submit* %114, %struct.buffer_head* %115)
  store i32 %116, i32* %16, align 4
  %117 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %118 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load %struct.dio*, %struct.dio** %9, align 8
  %123 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %124 = call i32 @dio_bio_submit(%struct.dio* %122, %struct.dio_submit* %123)
  br label %125

125:                                              ; preds = %121, %112
  %126 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %127 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %126, i32 0, i32 6
  %128 = load %struct.page*, %struct.page** %127, align 8
  %129 = call i32 @put_page(%struct.page* %128)
  %130 = load %struct.dio_submit*, %struct.dio_submit** %10, align 8
  %131 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %130, i32 0, i32 6
  store %struct.page* null, %struct.page** %131, align 8
  br label %132

132:                                              ; preds = %125, %107
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %132, %80
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i32 @task_io_account_write(i32) #1

declare dso_local i32 @dio_send_cur_page(%struct.dio*, %struct.dio_submit*, %struct.buffer_head*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @dio_bio_submit(%struct.dio*, %struct.dio_submit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
