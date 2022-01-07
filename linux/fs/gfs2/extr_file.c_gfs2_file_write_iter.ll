; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_file_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_file_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.kiocb = type { i32, i32, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.iov_iter = type { i32 }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_holder = type { i32 }

@IOCB_APPEND = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@IOCB_DIRECT = common dso_local global i32 0, align 4
@gfs2_iomap_ops = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @gfs2_file_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfs2_file_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.gfs2_holder, align 4
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %16 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %17 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %16, i32 0, i32 2
  %18 = load %struct.file*, %struct.file** %17, align 8
  store %struct.file* %18, %struct.file** %6, align 8
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = call %struct.inode* @file_inode(%struct.file* %19)
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %21)
  store %struct.gfs2_inode* %22, %struct.gfs2_inode** %8, align 8
  store i64 0, i64* %9, align 8
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %24 = call i64 @gfs2_rsqa_alloc(%struct.gfs2_inode* %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %3, align 8
  br label %192

29:                                               ; preds = %2
  %30 = load %struct.file*, %struct.file** %6, align 8
  %31 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %32 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %35 = call i32 @iov_iter_count(%struct.iov_iter* %34)
  %36 = call i32 @gfs2_size_hint(%struct.file* %30, i32 %33, i32 %35)
  %37 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %38 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IOCB_APPEND, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %29
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %45 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LM_ST_SHARED, align 4
  %48 = call i64 @gfs2_glock_nq_init(i32 %46, i32 %47, i32 0, %struct.gfs2_holder* %11)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %3, align 8
  br label %192

53:                                               ; preds = %43
  %54 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %11)
  br label %55

55:                                               ; preds = %53, %29
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call i32 @inode_lock(%struct.inode* %56)
  %58 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %59 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %60 = call i64 @generic_write_checks(%struct.kiocb* %58, %struct.iov_iter* %59)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp sle i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %171

64:                                               ; preds = %55
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = call i32* @inode_to_bdi(%struct.inode* %65)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32* %66, i32** %68, align 8
  %69 = load %struct.file*, %struct.file** %6, align 8
  %70 = call i64 @file_remove_privs(%struct.file* %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %168

74:                                               ; preds = %64
  %75 = load %struct.file*, %struct.file** %6, align 8
  %76 = call i64 @file_update_time(%struct.file* %75)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %168

80:                                               ; preds = %74
  %81 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %82 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IOCB_DIRECT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %149

87:                                               ; preds = %80
  %88 = load %struct.file*, %struct.file** %6, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  %90 = load %struct.address_space*, %struct.address_space** %89, align 8
  store %struct.address_space* %90, %struct.address_space** %12, align 8
  %91 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %92 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %93 = call i64 @gfs2_file_direct_write(%struct.kiocb* %91, %struct.iov_iter* %92)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %87
  %97 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %98 = call i32 @iov_iter_count(%struct.iov_iter* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96, %87
  br label %168

101:                                              ; preds = %96
  %102 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %103 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %104 = call i64 @iomap_file_buffered_write(%struct.kiocb* %102, %struct.iov_iter* %103, i32* @gfs2_iomap_ops)
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp slt i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %168

111:                                              ; preds = %101
  %112 = load i64, i64* %10, align 8
  store i64 %112, i64* %15, align 8
  %113 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %114 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %15, align 8
  %119 = add nsw i64 %117, %118
  %120 = sub nsw i64 %119, 1
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %14, align 4
  %122 = load %struct.address_space*, %struct.address_space** %12, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i64 @filemap_write_and_wait_range(%struct.address_space* %122, i32 %123, i32 %124)
  store i64 %125, i64* %10, align 8
  %126 = load i64, i64* %10, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %147, label %128

128:                                              ; preds = %111
  %129 = load i64, i64* %15, align 8
  %130 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %131 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %129
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 8
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* %9, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* %9, align 8
  %139 = load %struct.address_space*, %struct.address_space** %12, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @PAGE_SHIFT, align 4
  %142 = ashr i32 %140, %141
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @PAGE_SHIFT, align 4
  %145 = ashr i32 %143, %144
  %146 = call i32 @invalidate_mapping_pages(%struct.address_space* %139, i32 %142, i32 %145)
  br label %148

147:                                              ; preds = %111
  br label %148

148:                                              ; preds = %147, %128
  br label %167

149:                                              ; preds = %80
  %150 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %151 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %152 = call i64 @iomap_file_buffered_write(%struct.kiocb* %150, %struct.iov_iter* %151, i32* @gfs2_iomap_ops)
  store i64 %152, i64* %10, align 8
  %153 = load i64, i64* %10, align 8
  %154 = icmp sgt i64 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i64 @likely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %149
  %159 = load i64, i64* %10, align 8
  %160 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %161 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 8
  br label %166

166:                                              ; preds = %158, %149
  br label %167

167:                                              ; preds = %166, %148
  br label %168

168:                                              ; preds = %167, %110, %100, %79, %73
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i32* null, i32** %170, align 8
  br label %171

171:                                              ; preds = %168, %63
  %172 = load %struct.inode*, %struct.inode** %7, align 8
  %173 = call i32 @inode_unlock(%struct.inode* %172)
  %174 = load i64, i64* %10, align 8
  %175 = icmp sgt i64 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i64 @likely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %181 = load i64, i64* %10, align 8
  %182 = call i64 @generic_write_sync(%struct.kiocb* %180, i64 %181)
  store i64 %182, i64* %10, align 8
  br label %183

183:                                              ; preds = %179, %171
  %184 = load i64, i64* %9, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load i64, i64* %9, align 8
  br label %190

188:                                              ; preds = %183
  %189 = load i64, i64* %10, align 8
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i64 [ %187, %186 ], [ %189, %188 ]
  store i64 %191, i64* %3, align 8
  br label %192

192:                                              ; preds = %190, %51, %27
  %193 = load i64, i64* %3, align 8
  ret i64 %193
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_size_hint(%struct.file*, i32, i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32* @inode_to_bdi(%struct.inode*) #1

declare dso_local i64 @file_remove_privs(%struct.file*) #1

declare dso_local i64 @file_update_time(%struct.file*) #1

declare dso_local i64 @gfs2_file_direct_write(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i64 @iomap_file_buffered_write(%struct.kiocb*, %struct.iov_iter*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @filemap_write_and_wait_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @invalidate_mapping_pages(%struct.address_space*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i64 @generic_write_sync(%struct.kiocb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
