; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_fill_in_super_root_crc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_fill_in_super_root_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_segment_buffer = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }
%struct.nilfs_super_root = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_segment_buffer*, i32)* @nilfs_segbuf_fill_in_super_root_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segbuf_fill_in_super_root_crc(%struct.nilfs_segment_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.nilfs_segment_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_super_root*, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nilfs_segment_buffer* %0, %struct.nilfs_segment_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %12, align 8
  store %struct.the_nilfs* %13, %struct.the_nilfs** %6, align 8
  %14 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.nilfs_super_root*
  store %struct.nilfs_super_root* %19, %struct.nilfs_super_root** %5, align 8
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %21 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @NILFS_SR_BYTES(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %5, align 8
  %26 = bitcast %struct.nilfs_super_root* %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = sub i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32 @crc32_le(i32 %24, i8* %27, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %5, align 8
  %36 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @NILFS_SR_BYTES(i32) #1

declare dso_local i32 @crc32_le(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
