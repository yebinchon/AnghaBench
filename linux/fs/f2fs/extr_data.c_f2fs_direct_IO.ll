; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_inode_info = type { i32* }
%struct.TYPE_6__ = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@WHINT_MODE_OFF = common dso_local global i32 0, align 4
@WRITE_LIFE_NOT_SET = common dso_local global i32 0, align 4
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@get_data_block_dio_write = common dso_local global i32 0, align 4
@get_data_block_dio = common dso_local global i32 0, align 4
@f2fs_dio_submit_bio = common dso_local global i32 0, align 4
@DIO_LOCKING = common dso_local global i32 0, align 4
@DIO_SKIP_HOLES = common dso_local global i32 0, align 4
@APP_DIRECT_IO = common dso_local global i32 0, align 4
@FI_UPDATE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @f2fs_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca %struct.f2fs_inode_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__, align 4
  %17 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %18 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.address_space*, %struct.address_space** %21, align 8
  store %struct.address_space* %22, %struct.address_space** %6, align 8
  %23 = load %struct.address_space*, %struct.address_space** %6, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %7, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %26)
  store %struct.f2fs_sb_info* %27, %struct.f2fs_sb_info** %8, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = call %struct.f2fs_inode_info* @F2FS_I(%struct.inode* %28)
  store %struct.f2fs_inode_info* %29, %struct.f2fs_inode_info** %9, align 8
  %30 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %31 = call i64 @iov_iter_count(%struct.iov_iter* %30)
  store i64 %31, i64* %10, align 8
  %32 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %33 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %36 = call i32 @iov_iter_rw(%struct.iov_iter* %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %38 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %14, align 4
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %41 = call i32 @F2FS_OPTION(%struct.f2fs_sb_info* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @check_direct_IO(%struct.inode* %45, %struct.iov_iter* %46, i64 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %2
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  br label %57

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  store i32 %58, i32* %3, align 4
  br label %239

59:                                               ; preds = %2
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %62 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %63 = call i64 @f2fs_force_buffered_io(%struct.inode* %60, %struct.kiocb* %61, %struct.iov_iter* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %239

66:                                               ; preds = %59
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %69 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %70 = call i32 @allow_outplace_dio(%struct.inode* %67, %struct.kiocb* %68, %struct.iov_iter* %69)
  store i32 %70, i32* %17, align 4
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @trace_f2fs_direct_IO_enter(%struct.inode* %71, i64 %72, i64 %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @WRITE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %66
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @WHINT_MODE_OFF, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @WRITE_LIFE_NOT_SET, align 4
  %85 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %86 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %79, %66
  %88 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %89 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IOCB_NOWAIT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %134

94:                                               ; preds = %87
  %95 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %9, align 8
  %96 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @down_read_trylock(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %106 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @EAGAIN, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %13, align 4
  br label %231

109:                                              ; preds = %94
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %109
  %113 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %9, align 8
  %114 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @READ, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = call i32 @down_read_trylock(i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %112
  %121 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %9, align 8
  %122 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = call i32 @up_read(i32* %126)
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %130 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @EAGAIN, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %13, align 4
  br label %231

133:                                              ; preds = %112, %109
  br label %152

134:                                              ; preds = %87
  %135 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %9, align 8
  %136 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = call i32 @down_read(i32* %140)
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %134
  %145 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %9, align 8
  %146 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @READ, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = call i32 @down_read(i32* %149)
  br label %151

151:                                              ; preds = %144, %134
  br label %152

152:                                              ; preds = %151, %133
  %153 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %154 = load %struct.inode*, %struct.inode** %7, align 8
  %155 = load %struct.inode*, %struct.inode** %7, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 0
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @WRITE, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %152
  %165 = load i32, i32* @get_data_block_dio_write, align 4
  br label %168

166:                                              ; preds = %152
  %167 = load i32, i32* @get_data_block_dio, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = load i32, i32* @f2fs_dio_submit_bio, align 4
  %171 = load i32, i32* @DIO_LOCKING, align 4
  %172 = load i32, i32* @DIO_SKIP_HOLES, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @__blockdev_direct_IO(%struct.kiocb* %153, %struct.inode* %154, i32 %159, %struct.iov_iter* %160, i32 %169, i32* null, i32 %170, i32 %173)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %17, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %168
  %178 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %9, align 8
  %179 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @READ, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = call i32 @up_read(i32* %182)
  br label %184

184:                                              ; preds = %177, %168
  %185 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %9, align 8
  %186 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = call i32 @up_read(i32* %190)
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* @WRITE, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %230

195:                                              ; preds = %184
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* @WHINT_MODE_OFF, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load i32, i32* %14, align 4
  %201 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %202 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %199, %195
  %204 = load i32, i32* %13, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %203
  %207 = load %struct.inode*, %struct.inode** %7, align 8
  %208 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %207)
  %209 = load i32, i32* @APP_DIRECT_IO, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @f2fs_update_iostat(%struct.f2fs_sb_info* %208, i32 %209, i32 %210)
  %212 = load i32, i32* %17, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %206
  %215 = load %struct.inode*, %struct.inode** %7, align 8
  %216 = load i32, i32* @FI_UPDATE_WRITE, align 4
  %217 = call i32 @set_inode_flag(%struct.inode* %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %206
  br label %229

219:                                              ; preds = %203
  %220 = load i32, i32* %13, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %219
  %223 = load %struct.address_space*, %struct.address_space** %6, align 8
  %224 = load i64, i64* %11, align 8
  %225 = load i64, i64* %10, align 8
  %226 = add i64 %224, %225
  %227 = call i32 @f2fs_write_failed(%struct.address_space* %223, i64 %226)
  br label %228

228:                                              ; preds = %222, %219
  br label %229

229:                                              ; preds = %228, %218
  br label %230

230:                                              ; preds = %229, %184
  br label %231

231:                                              ; preds = %230, %120, %103
  %232 = load %struct.inode*, %struct.inode** %7, align 8
  %233 = load i64, i64* %11, align 8
  %234 = load i64, i64* %10, align 8
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %13, align 4
  %237 = call i32 @trace_f2fs_direct_IO_exit(%struct.inode* %232, i64 %233, i64 %234, i32 %235, i32 %236)
  %238 = load i32, i32* %13, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %231, %65, %57
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i32 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

declare dso_local i32 @check_direct_IO(%struct.inode*, %struct.iov_iter*, i64) #1

declare dso_local i64 @f2fs_force_buffered_io(%struct.inode*, %struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @allow_outplace_dio(%struct.inode*, %struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @trace_f2fs_direct_IO_enter(%struct.inode*, i64, i64, i32) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @__blockdev_direct_IO(%struct.kiocb*, %struct.inode*, i32, %struct.iov_iter*, i32, i32*, i32, i32) #1

declare dso_local i32 @f2fs_update_iostat(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_write_failed(%struct.address_space*, i64) #1

declare dso_local i32 @trace_f2fs_direct_IO_exit(%struct.inode*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
