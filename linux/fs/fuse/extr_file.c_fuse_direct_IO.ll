; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { %struct.TYPE_3__*, %struct.fuse_file* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.fuse_file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.fuse_io_priv = type { i32, i32, i32, i32, i32, i32, i32*, %struct.kiocb*, i64, i64, i64, i32 }

@wait = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@FUSE_DIO_WRITE = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i64 0, align 8
@fuse_io_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @fuse_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_direct_IO(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.fuse_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.fuse_io_priv*, align 8
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %17 = load i32, i32* @wait, align 4
  %18 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %17)
  store i64 0, i64* %6, align 8
  %19 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %20 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %19, i32 0, i32 1
  %21 = load %struct.file*, %struct.file** %20, align 8
  store %struct.file* %21, %struct.file** %7, align 8
  %22 = load %struct.file*, %struct.file** %7, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = load %struct.fuse_file*, %struct.fuse_file** %23, align 8
  store %struct.fuse_file* %24, %struct.fuse_file** %8, align 8
  %25 = load %struct.fuse_file*, %struct.fuse_file** %8, align 8
  %26 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %30 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %31 = call i64 @iov_iter_count(%struct.iov_iter* %30)
  store i64 %31, i64* %13, align 8
  %32 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %33 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  store i64 %35, i64* %10, align 8
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.inode*, %struct.inode** %39, align 8
  store %struct.inode* %40, %struct.inode** %11, align 8
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = call i64 @i_size_read(%struct.inode* %41)
  store i64 %42, i64* %12, align 8
  %43 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %44 = call i64 @iov_iter_rw(%struct.iov_iter* %43)
  %45 = load i64, i64* @READ, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i64 0, i64* %3, align 8
  br label %230

52:                                               ; preds = %47, %2
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %57 = call i64 @iov_iter_rw(%struct.iov_iter* %56)
  %58 = load i64, i64* @WRITE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %55
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %61, %62
  %64 = load i64, i64* %12, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i64 0, i64* %3, align 8
  br label %230

71:                                               ; preds = %66
  %72 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %73 = load %struct.fuse_file*, %struct.fuse_file** %8, align 8
  %74 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %14, align 8
  %78 = sub nsw i64 %76, %77
  %79 = call i32 @fuse_round_up(%struct.TYPE_4__* %75, i64 %78)
  %80 = call i32 @iov_iter_truncate(%struct.iov_iter* %72, i32 %79)
  %81 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %82 = call i64 @iov_iter_count(%struct.iov_iter* %81)
  store i64 %82, i64* %13, align 8
  br label %83

83:                                               ; preds = %71, %60, %55, %52
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.fuse_io_priv* @kmalloc(i32 72, i32 %84)
  store %struct.fuse_io_priv* %85, %struct.fuse_io_priv** %15, align 8
  %86 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %87 = icmp ne %struct.fuse_io_priv* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i64, i64* @ENOMEM, align 8
  %90 = sub nsw i64 0, %89
  store i64 %90, i64* %3, align 8
  br label %230

91:                                               ; preds = %83
  %92 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %93 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %92, i32 0, i32 11
  %94 = call i32 @spin_lock_init(i32* %93)
  %95 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %96 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %95, i32 0, i32 5
  %97 = call i32 @kref_init(i32* %96)
  %98 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %99 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %101 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %100, i32 0, i32 1
  store i32 -1, i32* %101, align 4
  %102 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %103 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %102, i32 0, i32 10
  store i64 0, i64* %103, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %106 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %105, i32 0, i32 9
  store i64 %104, i64* %106, align 8
  %107 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %108 = call i64 @iov_iter_rw(%struct.iov_iter* %107)
  %109 = load i64, i64* @WRITE, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %113 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %115 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %114, i32 0, i32 8
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %118 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %120 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %121 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %120, i32 0, i32 7
  store %struct.kiocb* %119, %struct.kiocb** %121, align 8
  %122 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %123 = call i32 @is_sync_kiocb(%struct.kiocb* %122)
  %124 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %125 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %13, align 8
  %128 = add i64 %126, %127
  %129 = load i64, i64* %12, align 8
  %130 = icmp ugt i64 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %91
  %132 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %133 = call i64 @iov_iter_rw(%struct.iov_iter* %132)
  %134 = load i64, i64* @WRITE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %138 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %137, i32 0, i32 4
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %131, %91
  %140 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %141 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %139
  %145 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %146 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %151 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %150, i32 0, i32 5
  %152 = call i32 @kref_get(i32* %151)
  %153 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %154 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %153, i32 0, i32 6
  store i32* @wait, i32** %154, align 8
  br label %155

155:                                              ; preds = %149, %144, %139
  %156 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %157 = call i64 @iov_iter_rw(%struct.iov_iter* %156)
  %158 = load i64, i64* @WRITE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %162 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %163 = load i32, i32* @FUSE_DIO_WRITE, align 4
  %164 = call i64 @fuse_direct_io(%struct.fuse_io_priv* %161, %struct.iov_iter* %162, i64* %10, i32 %163)
  store i64 %164, i64* %6, align 8
  %165 = load %struct.inode*, %struct.inode** %11, align 8
  %166 = call i32 @fuse_invalidate_attr(%struct.inode* %165)
  br label %171

167:                                              ; preds = %155
  %168 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %169 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %170 = call i64 @__fuse_direct_read(%struct.fuse_io_priv* %168, %struct.iov_iter* %169, i64* %10)
  store i64 %170, i64* %6, align 8
  br label %171

171:                                              ; preds = %167, %160
  %172 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %173 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %198

176:                                              ; preds = %171
  %177 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %178 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %16, align 4
  %180 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %181 = load i64, i64* %6, align 8
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = load i64, i64* %6, align 8
  br label %186

185:                                              ; preds = %176
  br label %186

186:                                              ; preds = %185, %183
  %187 = phi i64 [ %184, %183 ], [ 0, %185 ]
  %188 = call i32 @fuse_aio_complete(%struct.fuse_io_priv* %180, i64 %187, i32 -1)
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %186
  %192 = load i64, i64* @EIOCBQUEUED, align 8
  %193 = sub nsw i64 0, %192
  store i64 %193, i64* %3, align 8
  br label %230

194:                                              ; preds = %186
  %195 = call i32 @wait_for_completion(i32* @wait)
  %196 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %197 = call i64 @fuse_get_res_by_io(%struct.fuse_io_priv* %196)
  store i64 %197, i64* %6, align 8
  br label %198

198:                                              ; preds = %194, %171
  %199 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %15, align 8
  %200 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %199, i32 0, i32 5
  %201 = load i32, i32* @fuse_io_release, align 4
  %202 = call i32 @kref_put(i32* %200, i32 %201)
  %203 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %204 = call i64 @iov_iter_rw(%struct.iov_iter* %203)
  %205 = load i64, i64* @WRITE, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %198
  %208 = load i64, i64* %6, align 8
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load %struct.inode*, %struct.inode** %11, align 8
  %212 = load i64, i64* %10, align 8
  %213 = call i32 @fuse_write_update_size(%struct.inode* %211, i64 %212)
  br label %227

214:                                              ; preds = %207
  %215 = load i64, i64* %6, align 8
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %214
  %218 = load i64, i64* %14, align 8
  %219 = load i64, i64* %13, align 8
  %220 = add i64 %218, %219
  %221 = load i64, i64* %12, align 8
  %222 = icmp ugt i64 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %217
  %224 = load %struct.file*, %struct.file** %7, align 8
  %225 = call i32 @fuse_do_truncate(%struct.file* %224)
  br label %226

226:                                              ; preds = %223, %217, %214
  br label %227

227:                                              ; preds = %226, %210
  br label %228

228:                                              ; preds = %227, %198
  %229 = load i64, i64* %6, align 8
  store i64 %229, i64* %3, align 8
  br label %230

230:                                              ; preds = %228, %191, %88, %70, %51
  %231 = load i64, i64* %3, align 8
  ret i64 %231
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i32 @iov_iter_truncate(%struct.iov_iter*, i32) #1

declare dso_local i32 @fuse_round_up(%struct.TYPE_4__*, i64) #1

declare dso_local %struct.fuse_io_priv* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @fuse_direct_io(%struct.fuse_io_priv*, %struct.iov_iter*, i64*, i32) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i64 @__fuse_direct_read(%struct.fuse_io_priv*, %struct.iov_iter*, i64*) #1

declare dso_local i32 @fuse_aio_complete(%struct.fuse_io_priv*, i64, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @fuse_get_res_by_io(%struct.fuse_io_priv*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @fuse_write_update_size(%struct.inode*, i64) #1

declare dso_local i32 @fuse_do_truncate(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
