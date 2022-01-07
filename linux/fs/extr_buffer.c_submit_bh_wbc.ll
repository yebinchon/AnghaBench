; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_submit_bh_wbc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_submit_bh_wbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i32, i32, i32 }
%struct.writeback_control = type { i32 }
%struct.bio = type { i32, %struct.buffer_head*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@REQ_OP_WRITE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@end_bio_bh_io_sync = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.buffer_head*, i32, %struct.writeback_control*)* @submit_bh_wbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_bh_wbc(i32 %0, i32 %1, %struct.buffer_head* %2, i32 %3, %struct.writeback_control* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.writeback_control*, align 8
  %11 = alloca %struct.bio*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.writeback_control* %4, %struct.writeback_control** %10, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %13 = call i32 @buffer_locked(%struct.buffer_head* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %19 = call i32 @buffer_mapped(%struct.buffer_head* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %32 = call i32 @buffer_delay(%struct.buffer_head* %31)
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %35 = call i32 @buffer_unwritten(%struct.buffer_head* %34)
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %38 = call i64 @test_set_buffer_req(%struct.buffer_head* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %5
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @REQ_OP_WRITE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %46 = call i32 @clear_buffer_write_io_error(%struct.buffer_head* %45)
  br label %47

47:                                               ; preds = %44, %40, %5
  %48 = load i32, i32* @GFP_NOIO, align 4
  %49 = call %struct.bio* @bio_alloc(i32 %48, i32 1)
  store %struct.bio* %49, %struct.bio** %11, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 9
  %57 = mul nsw i32 %52, %56
  %58 = load %struct.bio*, %struct.bio** %11, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.bio*, %struct.bio** %11, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bio_set_dev(%struct.bio* %61, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.bio*, %struct.bio** %11, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.bio*, %struct.bio** %11, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %77 = call i32 @bh_offset(%struct.buffer_head* %76)
  %78 = call i32 @bio_add_page(%struct.bio* %69, i32 %72, i32 %75, i32 %77)
  %79 = load %struct.bio*, %struct.bio** %11, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %82, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load i32, i32* @end_bio_bh_io_sync, align 4
  %90 = load %struct.bio*, %struct.bio** %11, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %93 = load %struct.bio*, %struct.bio** %11, align 8
  %94 = getelementptr inbounds %struct.bio, %struct.bio* %93, i32 0, i32 1
  store %struct.buffer_head* %92, %struct.buffer_head** %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.bio*, %struct.bio** %11, align 8
  %97 = call i32 @guard_bio_eod(i32 %95, %struct.bio* %96)
  %98 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %99 = call i64 @buffer_meta(%struct.buffer_head* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %47
  %102 = load i32, i32* @REQ_META, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %47
  %106 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %107 = call i64 @buffer_prio(%struct.buffer_head* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* @REQ_PRIO, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %109, %105
  %114 = load %struct.bio*, %struct.bio** %11, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @bio_set_op_attrs(%struct.bio* %114, i32 %115, i32 %116)
  %118 = load %struct.writeback_control*, %struct.writeback_control** %10, align 8
  %119 = icmp ne %struct.writeback_control* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %113
  %121 = load %struct.writeback_control*, %struct.writeback_control** %10, align 8
  %122 = load %struct.bio*, %struct.bio** %11, align 8
  %123 = call i32 @wbc_init_bio(%struct.writeback_control* %121, %struct.bio* %122)
  %124 = load %struct.writeback_control*, %struct.writeback_control** %10, align 8
  %125 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %126 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %129 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @wbc_account_cgroup_owner(%struct.writeback_control* %124, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %120, %113
  %133 = load %struct.bio*, %struct.bio** %11, align 8
  %134 = call i32 @submit_bio(%struct.bio* %133)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i64 @test_set_buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @guard_bio_eod(i32, %struct.bio*) #1

declare dso_local i64 @buffer_meta(%struct.buffer_head*) #1

declare dso_local i64 @buffer_prio(%struct.buffer_head*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @wbc_init_bio(%struct.writeback_control*, %struct.bio*) #1

declare dso_local i32 @wbc_account_cgroup_owner(%struct.writeback_control*, i32, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
