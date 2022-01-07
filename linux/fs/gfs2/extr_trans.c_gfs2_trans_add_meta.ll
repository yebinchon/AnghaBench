; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_trans.c_gfs2_trans_add_meta.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_trans.c_gfs2_trans_add_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i32, i32, i32 }
%struct.gfs2_glock = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.buffer_head = type { i32, %struct.gfs2_bufdata* }
%struct.gfs2_bufdata = type { i32, %struct.TYPE_7__*, %struct.gfs2_glock* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.gfs2_meta_header = type { i32, i32, i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@TR_TOUCHED = common dso_local global i32 0, align 4
@GLF_LFLUSH = common dso_local global i32 0, align 4
@GLF_DIRTY = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Attempting to add uninitialised block to journal (inplace block=%lld)\0A\00", align 1
@SFS_FROZEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"GFS2:adding buf while frozen\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_trans_add_meta(%struct.gfs2_glock* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_bufdata*, align 8
  %7 = alloca %struct.gfs2_meta_header*, align 8
  %8 = alloca %struct.gfs2_trans*, align 8
  %9 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.gfs2_trans*, %struct.gfs2_trans** %15, align 8
  store %struct.gfs2_trans* %16, %struct.gfs2_trans** %8, align 8
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 1
  %19 = call i32 @atomic_read(i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %21 = call i32 @lock_buffer(%struct.buffer_head* %20)
  %22 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %23 = call i64 @buffer_pinned(%struct.buffer_head* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @TR_TOUCHED, align 4
  %27 = load %struct.gfs2_trans*, %struct.gfs2_trans** %8, align 8
  %28 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %27, i32 0, i32 2
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  br label %164

30:                                               ; preds = %2
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %32 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %31)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 1
  %35 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %34, align 8
  store %struct.gfs2_bufdata* %35, %struct.gfs2_bufdata** %6, align 8
  %36 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %37 = icmp eq %struct.gfs2_bufdata* %36, null
  br i1 %37, label %38, label %68

38:                                               ; preds = %30
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %40 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %42 = call i32 @unlock_buffer(%struct.buffer_head* %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @lock_page(i32 %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 1
  %49 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %48, align 8
  %50 = icmp eq %struct.gfs2_bufdata* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %54 = call %struct.gfs2_bufdata* @gfs2_alloc_bufdata(%struct.gfs2_glock* %52, %struct.buffer_head* %53)
  store %struct.gfs2_bufdata* %54, %struct.gfs2_bufdata** %6, align 8
  br label %59

55:                                               ; preds = %38
  %56 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 1
  %58 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %57, align 8
  store %struct.gfs2_bufdata* %58, %struct.gfs2_bufdata** %6, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @unlock_page(i32 %62)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %65 = call i32 @lock_buffer(%struct.buffer_head* %64)
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %67 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %66)
  br label %68

68:                                               ; preds = %59, %30
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %70 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %71 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %70, i32 0, i32 2
  %72 = load %struct.gfs2_glock*, %struct.gfs2_glock** %71, align 8
  %73 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %74 = icmp eq %struct.gfs2_glock* %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @gfs2_assert(%struct.gfs2_sbd* %69, i32 %75)
  %77 = load i32, i32* @TR_TOUCHED, align 4
  %78 = load %struct.gfs2_trans*, %struct.gfs2_trans** %8, align 8
  %79 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %78, i32 0, i32 2
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  %81 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %82 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %81, i32 0, i32 0
  %83 = call i32 @list_empty(i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %68
  br label %161

86:                                               ; preds = %68
  %87 = load i32, i32* @GLF_LFLUSH, align 4
  %88 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %89 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %88, i32 0, i32 2
  %90 = load %struct.gfs2_glock*, %struct.gfs2_glock** %89, align 8
  %91 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %90, i32 0, i32 0
  %92 = call i32 @set_bit(i32 %87, i32* %91)
  %93 = load i32, i32* @GLF_DIRTY, align 4
  %94 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %95 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %94, i32 0, i32 2
  %96 = load %struct.gfs2_glock*, %struct.gfs2_glock** %95, align 8
  %97 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %96, i32 0, i32 0
  %98 = call i32 @set_bit(i32 %93, i32* %97)
  %99 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %100 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.gfs2_meta_header*
  store %struct.gfs2_meta_header* %104, %struct.gfs2_meta_header** %7, align 8
  %105 = load %struct.gfs2_meta_header*, %struct.gfs2_meta_header** %7, align 8
  %106 = getelementptr inbounds %struct.gfs2_meta_header, %struct.gfs2_meta_header* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @GFS2_MAGIC, align 4
  %109 = call i32 @cpu_to_be32(i32 %108)
  %110 = icmp ne i32 %107, %109
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %86
  %115 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %116 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %117 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @fs_err(%struct.gfs2_sbd* %115, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %120)
  %122 = call i32 (...) @BUG()
  br label %123

123:                                              ; preds = %114, %86
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @SFS_FROZEN, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %132 = call i32 @fs_info(%struct.gfs2_sbd* %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %133 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %134 = call i32 @gfs2_assert_withdraw(%struct.gfs2_sbd* %133, i32 0)
  br label %135

135:                                              ; preds = %130, %123
  %136 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %137 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %138 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = call i32 @gfs2_pin(%struct.gfs2_sbd* %136, %struct.TYPE_7__* %139)
  %141 = call i32 @cpu_to_be64(i32 0)
  %142 = load %struct.gfs2_meta_header*, %struct.gfs2_meta_header** %7, align 8
  %143 = getelementptr inbounds %struct.gfs2_meta_header, %struct.gfs2_meta_header* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %145 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @cpu_to_be32(i32 %148)
  %150 = load %struct.gfs2_meta_header*, %struct.gfs2_meta_header** %7, align 8
  %151 = getelementptr inbounds %struct.gfs2_meta_header, %struct.gfs2_meta_header* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %6, align 8
  %153 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %152, i32 0, i32 0
  %154 = load %struct.gfs2_trans*, %struct.gfs2_trans** %8, align 8
  %155 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %154, i32 0, i32 1
  %156 = call i32 @list_add(i32* %153, i32* %155)
  %157 = load %struct.gfs2_trans*, %struct.gfs2_trans** %8, align 8
  %158 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %135, %85
  %162 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %163 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %162)
  br label %164

164:                                              ; preds = %161, %25
  %165 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %166 = call i32 @unlock_buffer(%struct.buffer_head* %165)
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_pinned(%struct.buffer_head*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_log_lock(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_unlock(%struct.gfs2_sbd*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @lock_page(i32) #1

declare dso_local %struct.gfs2_bufdata* @gfs2_alloc_bufdata(%struct.gfs2_glock*, %struct.buffer_head*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @gfs2_assert(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*) #1

declare dso_local i32 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_pin(%struct.gfs2_sbd*, %struct.TYPE_7__*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
