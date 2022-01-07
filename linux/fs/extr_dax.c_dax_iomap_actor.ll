; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_iomap_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_iomap_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i64, i32, %struct.dax_device*, %struct.block_device* }
%struct.dax_device = type { i32 }
%struct.block_device = type { i32 }
%struct.iov_iter = type { i32 }

@READ = common dso_local global i64 0, align 8
@IOMAP_HOLE = common dso_local global i64 0, align 8
@IOMAP_UNWRITTEN = common dso_local global i64 0, align 8
@IOMAP_MAPPED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@IOMAP_F_NEW = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i8*, %struct.iomap*)* @dax_iomap_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_iomap_actor(%struct.inode* %0, i32 %1, i32 %2, i8* %3, %struct.iomap* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iomap*, align 8
  %12 = alloca %struct.block_device*, align 8
  %13 = alloca %struct.dax_device*, align 8
  %14 = alloca %struct.iov_iter*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.iomap* %4, %struct.iomap** %11, align 8
  %26 = load %struct.iomap*, %struct.iomap** %11, align 8
  %27 = getelementptr inbounds %struct.iomap, %struct.iomap* %26, i32 0, i32 3
  %28 = load %struct.block_device*, %struct.block_device** %27, align 8
  store %struct.block_device* %28, %struct.block_device** %12, align 8
  %29 = load %struct.iomap*, %struct.iomap** %11, align 8
  %30 = getelementptr inbounds %struct.iomap, %struct.iomap* %29, i32 0, i32 2
  %31 = load %struct.dax_device*, %struct.dax_device** %30, align 8
  store %struct.dax_device* %31, %struct.dax_device** %13, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = bitcast i8* %32 to %struct.iov_iter*
  store %struct.iov_iter* %33, %struct.iov_iter** %14, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %37 = load %struct.iov_iter*, %struct.iov_iter** %14, align 8
  %38 = call i64 @iov_iter_rw(%struct.iov_iter* %37)
  %39 = load i64, i64* @READ, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %5
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call i32 @i_size_read(%struct.inode* %43)
  %45 = call i32 @min(i32 %42, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %222

50:                                               ; preds = %41
  %51 = load %struct.iomap*, %struct.iomap** %11, align 8
  %52 = getelementptr inbounds %struct.iomap, %struct.iomap* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IOMAP_HOLE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.iomap*, %struct.iomap** %11, align 8
  %58 = getelementptr inbounds %struct.iomap, %struct.iomap* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IOMAP_UNWRITTEN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56, %50
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %64, %65
  %67 = call i32 @min(i32 %63, i32 %66)
  %68 = load %struct.iov_iter*, %struct.iov_iter** %14, align 8
  %69 = call i32 @iov_iter_zero(i32 %67, %struct.iov_iter* %68)
  store i32 %69, i32* %6, align 4
  br label %222

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %5
  %72 = load %struct.iomap*, %struct.iomap** %11, align 8
  %73 = getelementptr inbounds %struct.iomap, %struct.iomap* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IOMAP_MAPPED, align 8
  %76 = icmp ne i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @WARN_ON_ONCE(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %222

83:                                               ; preds = %71
  %84 = load %struct.iomap*, %struct.iomap** %11, align 8
  %85 = getelementptr inbounds %struct.iomap, %struct.iomap* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IOMAP_F_NEW, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %83
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @PAGE_SHIFT, align 4
  %96 = ashr i32 %94, %95
  %97 = load i32, i32* %15, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* @PAGE_SHIFT, align 4
  %100 = ashr i32 %98, %99
  %101 = call i32 @invalidate_inode_pages2_range(i32 %93, i32 %96, i32 %100)
  br label %102

102:                                              ; preds = %90, %83
  %103 = call i32 (...) @dax_read_lock()
  store i32 %103, i32* %19, align 4
  br label %104

104:                                              ; preds = %210, %102
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %211

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %109, %111
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %20, align 4
  %115 = add i32 %113, %114
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = call i64 @ALIGN(i32 %115, i32 %116)
  store i64 %117, i64* %21, align 8
  %118 = load %struct.iomap*, %struct.iomap** %11, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @dax_iomap_sector(%struct.iomap* %118, i32 %119)
  store i32 %120, i32* %22, align 4
  %121 = load i32, i32* @current, align 4
  %122 = call i64 @fatal_signal_pending(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %108
  %125 = load i32, i32* @EINTR, align 4
  %126 = sub i32 0, %125
  store i32 %126, i32* %17, align 4
  br label %211

127:                                              ; preds = %108
  %128 = load %struct.block_device*, %struct.block_device** %12, align 8
  %129 = load i32, i32* %22, align 4
  %130 = load i64, i64* %21, align 8
  %131 = call i32 @bdev_dax_pgoff(%struct.block_device* %128, i32 %129, i64 %130, i32* %24)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %211

135:                                              ; preds = %127
  %136 = load %struct.dax_device*, %struct.dax_device** %13, align 8
  %137 = load i32, i32* %24, align 4
  %138 = load i64, i64* %21, align 8
  %139 = call i32 @PHYS_PFN(i64 %138)
  %140 = call i32 @dax_direct_access(%struct.dax_device* %136, i32 %137, i32 %139, i8** %25, i32* null)
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %23, align 4
  %142 = icmp ult i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %23, align 4
  store i32 %144, i32* %17, align 4
  br label %211

145:                                              ; preds = %135
  %146 = load i32, i32* %23, align 4
  %147 = call i32 @PFN_PHYS(i32 %146)
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %20, align 4
  %149 = load i8*, i8** %25, align 8
  %150 = zext i32 %148 to i64
  %151 = getelementptr i8, i8* %149, i64 %150
  store i8* %151, i8** %25, align 8
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %23, align 4
  %154 = sub i32 %153, %152
  store i32 %154, i32* %23, align 4
  %155 = load i32, i32* %23, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %8, align 4
  %158 = sub nsw i32 %156, %157
  %159 = icmp ugt i32 %155, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %145
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %8, align 4
  %163 = sub nsw i32 %161, %162
  store i32 %163, i32* %23, align 4
  br label %164

164:                                              ; preds = %160, %145
  %165 = load %struct.iov_iter*, %struct.iov_iter** %14, align 8
  %166 = call i64 @iov_iter_rw(%struct.iov_iter* %165)
  %167 = load i64, i64* @WRITE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load %struct.dax_device*, %struct.dax_device** %13, align 8
  %171 = load i32, i32* %24, align 4
  %172 = load i8*, i8** %25, align 8
  %173 = load i32, i32* %23, align 4
  %174 = load %struct.iov_iter*, %struct.iov_iter** %14, align 8
  %175 = call i64 @dax_copy_from_iter(%struct.dax_device* %170, i32 %171, i8* %172, i32 %173, %struct.iov_iter* %174)
  store i64 %175, i64* %18, align 8
  br label %183

176:                                              ; preds = %164
  %177 = load %struct.dax_device*, %struct.dax_device** %13, align 8
  %178 = load i32, i32* %24, align 4
  %179 = load i8*, i8** %25, align 8
  %180 = load i32, i32* %23, align 4
  %181 = load %struct.iov_iter*, %struct.iov_iter** %14, align 8
  %182 = call i64 @dax_copy_to_iter(%struct.dax_device* %177, i32 %178, i8* %179, i32 %180, %struct.iov_iter* %181)
  store i64 %182, i64* %18, align 8
  br label %183

183:                                              ; preds = %176, %169
  %184 = load i64, i64* %18, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %8, align 4
  %189 = load i64, i64* %18, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = sub i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %9, align 4
  %194 = load i64, i64* %18, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = add i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %16, align 4
  %199 = load i64, i64* %18, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %183
  %202 = load i32, i32* @EFAULT, align 4
  %203 = sub i32 0, %202
  store i32 %203, i32* %17, align 4
  br label %204

204:                                              ; preds = %201, %183
  %205 = load i64, i64* %18, align 8
  %206 = load i32, i32* %23, align 4
  %207 = zext i32 %206 to i64
  %208 = icmp ult i64 %205, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %211

210:                                              ; preds = %204
  br label %104

211:                                              ; preds = %209, %143, %134, %124, %104
  %212 = load i32, i32* %19, align 4
  %213 = call i32 @dax_read_unlock(i32 %212)
  %214 = load i32, i32* %16, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i32, i32* %16, align 4
  br label %220

218:                                              ; preds = %211
  %219 = load i32, i32* %17, align 4
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %217, %216 ], [ %219, %218 ]
  store i32 %221, i32* %6, align 4
  br label %222

222:                                              ; preds = %220, %80, %62, %49
  %223 = load i32, i32* %6, align 4
  ret i32 %223
}

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @iov_iter_zero(i32, %struct.iov_iter*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @invalidate_inode_pages2_range(i32, i32, i32) #1

declare dso_local i32 @dax_read_lock(...) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @dax_iomap_sector(%struct.iomap*, i32) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @bdev_dax_pgoff(%struct.block_device*, i32, i64, i32*) #1

declare dso_local i32 @dax_direct_access(%struct.dax_device*, i32, i32, i8**, i32*) #1

declare dso_local i32 @PHYS_PFN(i64) #1

declare dso_local i32 @PFN_PHYS(i32) #1

declare dso_local i64 @dax_copy_from_iter(%struct.dax_device*, i32, i8*, i32, %struct.iov_iter*) #1

declare dso_local i64 @dax_copy_to_iter(%struct.dax_device*, i32, i8*, i32, %struct.iov_iter*) #1

declare dso_local i32 @dax_read_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
