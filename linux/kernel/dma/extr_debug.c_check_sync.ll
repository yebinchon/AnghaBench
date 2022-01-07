; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_check_sync.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_check_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_debug_entry = type { i64, i64, i64, i64, %struct.device*, i64 }
%struct.hash_bucket = type { i32 }

@.str = private unnamed_addr constant [106 x i8] c"device driver tries to sync DMA memory it has not allocated [device address=0x%016llx] [size=%llu bytes]\0A\00", align 1
@.str.1 = private unnamed_addr constant [136 x i8] c"device driver syncs DMA memory outside allocated range [device address=0x%016llx] [allocation size=%llu bytes] [sync offset+size=%llu]\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [136 x i8] c"device driver syncs DMA memory with different direction [device address=0x%016llx] [size=%llu bytes] [mapped with %s] [synced with %s]\0A\00", align 1
@dir2name = common dso_local global i32* null, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [136 x i8] c"device driver syncs device read-only DMA memory for cpu [device address=0x%016llx] [size=%llu bytes] [mapped with %s] [synced with %s]\0A\00", align 1
@.str.4 = private unnamed_addr constant [139 x i8] c"device driver syncs device write-only DMA memory to device [device address=0x%016llx] [size=%llu bytes] [mapped with %s] [synced with %s]\0A\00", align 1
@dma_debug_sg = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [91 x i8] c"device driver syncs DMA sg list with different entry count [map count=%d] [sync count=%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.dma_debug_entry*, i32)* @check_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_sync(%struct.device* %0, %struct.dma_debug_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dma_debug_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_debug_entry*, align 8
  %8 = alloca %struct.hash_bucket*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.dma_debug_entry* %1, %struct.dma_debug_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %11 = call %struct.hash_bucket* @get_hash_bucket(%struct.dma_debug_entry* %10, i64* %9)
  store %struct.hash_bucket* %11, %struct.hash_bucket** %8, align 8
  %12 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %13 = call %struct.dma_debug_entry* @bucket_find_contain(%struct.hash_bucket** %8, %struct.dma_debug_entry* %12, i64* %9)
  store %struct.dma_debug_entry* %13, %struct.dma_debug_entry** %7, align 8
  %14 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %15 = icmp ne %struct.dma_debug_entry* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %19 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %22 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (%struct.device*, %struct.dma_debug_entry*, i8*, i64, i64, ...) @err_printk(%struct.device* %17, %struct.dma_debug_entry* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %23)
  br label %189

25:                                               ; preds = %3
  %26 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %27 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %30 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %36 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %37 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %40 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %43 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (%struct.device*, %struct.dma_debug_entry*, i8*, i64, i64, ...) @err_printk(%struct.device* %34, %struct.dma_debug_entry* %35, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %41, i64 %44)
  br label %46

46:                                               ; preds = %33, %25
  %47 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %48 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DMA_BIDIRECTIONAL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %189

53:                                               ; preds = %46
  %54 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %55 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %58 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %53
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %64 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %65 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %68 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32*, i32** @dir2name, align 8
  %71 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %72 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** @dir2name, align 8
  %77 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %78 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (%struct.device*, %struct.dma_debug_entry*, i8*, i64, i64, ...) @err_printk(%struct.device* %62, %struct.dma_debug_entry* %63, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.2, i64 0, i64 0), i64 %66, i64 %69, i32 %75, i32 %81)
  br label %83

83:                                               ; preds = %61, %53
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %120

86:                                               ; preds = %83
  %87 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %88 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %120, label %92

92:                                               ; preds = %86
  %93 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %94 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DMA_TO_DEVICE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %120, label %98

98:                                               ; preds = %92
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %101 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %102 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %105 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32*, i32** @dir2name, align 8
  %108 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %109 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** @dir2name, align 8
  %114 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %115 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (%struct.device*, %struct.dma_debug_entry*, i8*, i64, i64, ...) @err_printk(%struct.device* %99, %struct.dma_debug_entry* %100, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.3, i64 0, i64 0), i64 %103, i64 %106, i32 %112, i32 %118)
  br label %120

120:                                              ; preds = %98, %92, %86, %83
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %157, label %123

123:                                              ; preds = %120
  %124 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %125 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DMA_TO_DEVICE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %157, label %129

129:                                              ; preds = %123
  %130 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %131 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %157, label %135

135:                                              ; preds = %129
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %138 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %139 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %142 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32*, i32** @dir2name, align 8
  %145 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %146 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** @dir2name, align 8
  %151 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %152 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (%struct.device*, %struct.dma_debug_entry*, i8*, i64, i64, ...) @err_printk(%struct.device* %136, %struct.dma_debug_entry* %137, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.4, i64 0, i64 0), i64 %140, i64 %143, i32 %149, i32 %155)
  br label %157

157:                                              ; preds = %135, %129, %123, %120
  %158 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %159 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %157
  %163 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %164 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @dma_debug_sg, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %188

168:                                              ; preds = %162
  %169 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %170 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %173 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %171, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %168
  %177 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %178 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %177, i32 0, i32 4
  %179 = load %struct.device*, %struct.device** %178, align 8
  %180 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %181 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %7, align 8
  %182 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.dma_debug_entry*, %struct.dma_debug_entry** %5, align 8
  %185 = getelementptr inbounds %struct.dma_debug_entry, %struct.dma_debug_entry* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = call i32 (%struct.device*, %struct.dma_debug_entry*, i8*, i64, i64, ...) @err_printk(%struct.device* %179, %struct.dma_debug_entry* %180, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0), i64 %183, i64 %186)
  br label %188

188:                                              ; preds = %176, %168, %162, %157
  br label %189

189:                                              ; preds = %188, %52, %16
  %190 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %191 = call i32 @put_hash_bucket(%struct.hash_bucket* %190, i64* %9)
  ret void
}

declare dso_local %struct.hash_bucket* @get_hash_bucket(%struct.dma_debug_entry*, i64*) #1

declare dso_local %struct.dma_debug_entry* @bucket_find_contain(%struct.hash_bucket**, %struct.dma_debug_entry*, i64*) #1

declare dso_local i32 @err_printk(%struct.device*, %struct.dma_debug_entry*, i8*, i64, i64, ...) #1

declare dso_local i32 @put_hash_bucket(%struct.hash_bucket*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
