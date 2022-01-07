; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_wb_init.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_wb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { i32, i32, i32*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, %struct.backing_dev_info* }
%struct.backing_dev_info = type { %struct.bdi_writeback }

@jiffies = common dso_local global i8* null, align 8
@INIT_BW = common dso_local global i8* null, align 8
@wb_workfn = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NR_WB_STAT_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdi_writeback*, %struct.backing_dev_info*, i32, i32)* @wb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_init(%struct.bdi_writeback* %0, %struct.backing_dev_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bdi_writeback*, align 8
  %7 = alloca %struct.backing_dev_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %6, align 8
  store %struct.backing_dev_info* %1, %struct.backing_dev_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %13 = call i32 @memset(%struct.bdi_writeback* %12, i32 0, i32 120)
  %14 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %15 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %16 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %15, i32 0, i32 0
  %17 = icmp ne %struct.bdi_writeback* %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %20 = call i32 @bdi_get(%struct.backing_dev_info* %19)
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %23 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %24 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %23, i32 0, i32 18
  store %struct.backing_dev_info* %22, %struct.backing_dev_info** %24, align 8
  %25 = load i8*, i8** @jiffies, align 8
  %26 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %27 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %26, i32 0, i32 17
  store i8* %25, i8** %27, align 8
  %28 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %29 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %28, i32 0, i32 16
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %32 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %31, i32 0, i32 15
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %35 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %34, i32 0, i32 14
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %38 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %37, i32 0, i32 13
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %41 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %40, i32 0, i32 12
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load i8*, i8** @jiffies, align 8
  %44 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %45 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %44, i32 0, i32 11
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @INIT_BW, align 8
  %47 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %48 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %47, i32 0, i32 10
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @INIT_BW, align 8
  %50 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %51 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %50, i32 0, i32 9
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @INIT_BW, align 8
  %53 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %54 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @INIT_BW, align 8
  %56 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %57 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %59 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %58, i32 0, i32 6
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %62 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %61, i32 0, i32 5
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %65 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %64, i32 0, i32 4
  %66 = load i32, i32* @wb_workfn, align 4
  %67 = call i32 @INIT_DELAYED_WORK(i32* %65, i32 %66)
  %68 = load i8*, i8** @jiffies, align 8
  %69 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %70 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @wb_congested_get_create(%struct.backing_dev_info* %71, i32 %72, i32 %73)
  %75 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %76 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %78 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %21
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %11, align 4
  br label %136

84:                                               ; preds = %21
  %85 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %86 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %85, i32 0, i32 1
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @fprop_local_init_percpu(i32* %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %131

92:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %110, %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @NR_WB_STAT_ITEMS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %99 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @percpu_counter_init(i32* %103, i32 0, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %114

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %93

113:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %146

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %119, %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %10, align 4
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %121 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = call i32 @percpu_counter_destroy(i32* %125)
  br label %115

127:                                              ; preds = %115
  %128 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %129 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %128, i32 0, i32 1
  %130 = call i32 @fprop_local_destroy_percpu(i32* %129)
  br label %131

131:                                              ; preds = %127, %91
  %132 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %133 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @wb_congested_put(i32 %134)
  br label %136

136:                                              ; preds = %131, %81
  %137 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %138 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %139 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %138, i32 0, i32 0
  %140 = icmp ne %struct.bdi_writeback* %137, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %143 = call i32 @bdi_put(%struct.backing_dev_info* %142)
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %113
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @memset(%struct.bdi_writeback*, i32, i32) #1

declare dso_local i32 @bdi_get(%struct.backing_dev_info*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @wb_congested_get_create(%struct.backing_dev_info*, i32, i32) #1

declare dso_local i32 @fprop_local_init_percpu(i32*, i32) #1

declare dso_local i32 @percpu_counter_init(i32*, i32, i32) #1

declare dso_local i32 @percpu_counter_destroy(i32*) #1

declare dso_local i32 @fprop_local_destroy_percpu(i32*) #1

declare dso_local i32 @wb_congested_put(i32) #1

declare dso_local i32 @bdi_put(%struct.backing_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
