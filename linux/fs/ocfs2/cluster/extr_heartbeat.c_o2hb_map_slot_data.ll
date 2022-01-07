; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_map_slot_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_map_slot_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, i32, i32, i32, %struct.o2hb_disk_slot*, %struct.page**, i32* }
%struct.o2hb_disk_slot = type { i32, %struct.o2hb_disk_heartbeat_block*, i32 }
%struct.o2hb_disk_heartbeat_block = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ML_HEARTBEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Going to require %u pages to cover %u blocks at %u blocks per page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2hb_region*)* @o2hb_map_slot_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_map_slot_data(%struct.o2hb_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.o2hb_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.o2hb_disk_slot*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %3, align 8
  %11 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %12 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %15 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kmalloc(i32 %16, i32 %17)
  %19 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %20 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %19, i32 0, i32 6
  store i32* %18, i32** %20, align 8
  %21 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %22 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %182

28:                                               ; preds = %1
  %29 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %30 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kcalloc(i32 %31, i32 24, i32 %32)
  %34 = bitcast i8* %33 to %struct.o2hb_disk_slot*
  %35 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %36 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %35, i32 0, i32 4
  store %struct.o2hb_disk_slot* %34, %struct.o2hb_disk_slot** %36, align 8
  %37 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %38 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %37, i32 0, i32 4
  %39 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %38, align 8
  %40 = icmp eq %struct.o2hb_disk_slot* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %182

44:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %66, %44
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %48 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %53 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %52, i32 0, i32 4
  %54 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %54, i64 %56
  store %struct.o2hb_disk_slot* %57, %struct.o2hb_disk_slot** %10, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %10, align 8
  %60 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %10, align 8
  %62 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %61, i32 0, i32 2
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %10, align 8
  %65 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %64, i32 0, i32 1
  store %struct.o2hb_disk_heartbeat_block* null, %struct.o2hb_disk_heartbeat_block** %65, align 8
  br label %66

66:                                               ; preds = %51
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %45

69:                                               ; preds = %45
  %70 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %71 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %72, %73
  %75 = sub i32 %74, 1
  %76 = load i32, i32* %7, align 4
  %77 = udiv i32 %75, %76
  %78 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %79 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @ML_HEARTBEAT, align 4
  %81 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %82 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %85 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @mlog(i32 %80, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %86, i32 %87)
  %89 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %90 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @kcalloc(i32 %91, i32 8, i32 %92)
  %94 = bitcast i8* %93 to %struct.page**
  %95 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %96 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %95, i32 0, i32 5
  store %struct.page** %94, %struct.page*** %96, align 8
  %97 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %98 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %97, i32 0, i32 5
  %99 = load %struct.page**, %struct.page*** %98, align 8
  %100 = icmp ne %struct.page** %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %69
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %182

104:                                              ; preds = %69
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %178, %104
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %108 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %181

111:                                              ; preds = %105
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.page* @alloc_page(i32 %112)
  store %struct.page* %113, %struct.page** %8, align 8
  %114 = load %struct.page*, %struct.page** %8, align 8
  %115 = icmp ne %struct.page* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %182

119:                                              ; preds = %111
  %120 = load %struct.page*, %struct.page** %8, align 8
  %121 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %122 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %121, i32 0, i32 5
  %123 = load %struct.page**, %struct.page*** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.page*, %struct.page** %123, i64 %125
  store %struct.page* %120, %struct.page** %126, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %7, align 4
  %129 = mul i32 %127, %128
  store i32 %129, i32* %6, align 4
  %130 = load %struct.page*, %struct.page** %8, align 8
  %131 = call i8* @page_address(%struct.page* %130)
  store i8* %131, i8** %9, align 8
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %174, %119
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = add i32 %137, %138
  %140 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %141 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ult i32 %139, %142
  br label %144

144:                                              ; preds = %136, %132
  %145 = phi i1 [ false, %132 ], [ %143, %136 ]
  br i1 %145, label %146, label %177

146:                                              ; preds = %144
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %6, align 4
  %149 = add i32 %147, %148
  %150 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %151 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp uge i32 %149, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @BUG_ON(i32 %154)
  %156 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %157 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %156, i32 0, i32 4
  %158 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %6, align 4
  %161 = add i32 %159, %160
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %158, i64 %162
  store %struct.o2hb_disk_slot* %163, %struct.o2hb_disk_slot** %10, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = bitcast i8* %164 to %struct.o2hb_disk_heartbeat_block*
  %166 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %10, align 8
  %167 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %166, i32 0, i32 1
  store %struct.o2hb_disk_heartbeat_block* %165, %struct.o2hb_disk_heartbeat_block** %167, align 8
  %168 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %169 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %9, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %9, align 8
  br label %174

174:                                              ; preds = %146
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %132

177:                                              ; preds = %144
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  br label %105

181:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %181, %116, %101, %41, %25
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
