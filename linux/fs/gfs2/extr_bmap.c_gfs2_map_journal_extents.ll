; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_map_journal_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_map_journal_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gfs2_jdesc = type { i64, i32, i32, i32 }
%struct.gfs2_inode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32, i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"journal %d mapped with %u extents in %lldms\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"error %d mapping journal %u at offset %llu (extent %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"bmap=%d lblock=%llu block=%llu, state=0x%08lx, size=%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_map_journal_extents(%struct.gfs2_sbd* %0, %struct.gfs2_jdesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_jdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.buffer_head, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store %struct.gfs2_jdesc* %1, %struct.gfs2_jdesc** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.gfs2_inode* @GFS2_I(i32 %17)
  store %struct.gfs2_inode* %18, %struct.gfs2_inode** %8, align 8
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %20 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = call i32 (...) @ktime_get()
  store i32 %23, i32* %13, align 4
  %24 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %25 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @i_size_read(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = lshr i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %36 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %38 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %37, i32 0, i32 3
  %39 = call i32 @list_empty(i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  br label %44

44:                                               ; preds = %87, %2
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %50 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @gfs2_block_map(i32 %51, i32 %52, %struct.buffer_head* %9, i32 0)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = call i32 @buffer_mapped(%struct.buffer_head* %9)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56, %44
  br label %103

60:                                               ; preds = %56
  %61 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = lshr i32 %66, %67
  %69 = call i32 @gfs2_add_jextent(%struct.gfs2_jdesc* %61, i32 %62, i64 %64, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %103

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %81 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = lshr i32 %79, %83
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %11, align 4
  %89 = icmp ugt i32 %88, 0
  br i1 %89, label %44, label %90

90:                                               ; preds = %87
  %91 = call i32 (...) @ktime_get()
  store i32 %91, i32* %14, align 4
  %92 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %93 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %94 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %97 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @ktime_ms_delta(i32 %99, i32 %100)
  %102 = call i32 @fs_info(%struct.gfs2_sbd* %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %95, i64 %98, i32 %101)
  store i32 0, i32* %3, align 4
  br label %136

103:                                              ; preds = %72, %59
  %104 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %107 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %111 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @i_size_read(i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = sub i32 %113, %114
  %116 = zext i32 %115 to i64
  %117 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %118 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (%struct.gfs2_sbd*, i8*, i32, i64, i64, i64, ...) @fs_warn(%struct.gfs2_sbd* %104, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %105, i64 %109, i64 %116, i64 %119)
  %121 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %6, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = zext i32 %130 to i64
  %132 = call i32 (%struct.gfs2_sbd*, i8*, i32, i64, i64, i64, ...) @fs_warn(%struct.gfs2_sbd* %121, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %122, i64 %124, i64 %126, i64 %128, i64 %131)
  %133 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %134 = call i32 @gfs2_free_journal_extents(%struct.gfs2_jdesc* %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %103, %90
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @gfs2_block_map(i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_add_jextent(%struct.gfs2_jdesc*, i32, i64, i32) #1

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*, i32, i64, i32) #1

declare dso_local i32 @ktime_ms_delta(i32, i32) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i32, i64, i64, i64, ...) #1

declare dso_local i32 @gfs2_free_journal_extents(%struct.gfs2_jdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
