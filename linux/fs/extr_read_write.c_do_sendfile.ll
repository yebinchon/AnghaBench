; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_do_sendfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_do_sendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.inode = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@FMODE_PREAD = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@MAX_RW_COUNT = common dso_local global i64 0, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SPLICE_F_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*, i64, i64)* @do_sendfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sendfile(i32 %0, i32 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fd, align 8
  %12 = alloca %struct.fd, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.fd, align 8
  %20 = alloca %struct.fd, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %21 = load i32, i32* @EBADF, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.TYPE_11__* @fdget(i32 %23)
  %25 = getelementptr inbounds %struct.fd, %struct.fd* %19, i32 0, i32 0
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %25, align 8
  %26 = bitcast %struct.fd* %11 to i8*
  %27 = bitcast %struct.fd* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 8, i1 false)
  %28 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %5
  br label %217

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FMODE_READ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %213

41:                                               ; preds = %32
  %42 = load i32, i32* @ESPIPE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %17, align 4
  %44 = load i64*, i64** %8, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %15, align 8
  br label %63

51:                                               ; preds = %41
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %15, align 8
  %54 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FMODE_PREAD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %213

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* @READ, align 4
  %65 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @rw_verify_area(i32 %64, %struct.TYPE_11__* %66, i64* %15, i64 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %213

72:                                               ; preds = %63
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @MAX_RW_COUNT, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* @MAX_RW_COUNT, align 8
  store i64 %77, i64* %9, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32, i32* @EBADF, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call %struct.TYPE_11__* @fdget(i32 %81)
  %83 = getelementptr inbounds %struct.fd, %struct.fd* %20, i32 0, i32 0
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %83, align 8
  %84 = bitcast %struct.fd* %12 to i8*
  %85 = bitcast %struct.fd* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 8, i1 false)
  %86 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = icmp ne %struct.TYPE_11__* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  br label %213

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FMODE_WRITE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  br label %209

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = call %struct.inode* @file_inode(%struct.TYPE_11__* %101)
  store %struct.inode* %102, %struct.inode** %13, align 8
  %103 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = call %struct.inode* @file_inode(%struct.TYPE_11__* %104)
  store %struct.inode* %105, %struct.inode** %14, align 8
  %106 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %16, align 8
  %110 = load i32, i32* @WRITE, align 4
  %111 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @rw_verify_area(i32 %110, %struct.TYPE_11__* %112, i64* %16, i64 %113)
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %99
  br label %209

118:                                              ; preds = %99
  %119 = load i64, i64* %10, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %118
  %122 = load %struct.inode*, %struct.inode** %13, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.inode*, %struct.inode** %14, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @min(i32 %126, i32 %131)
  store i64 %132, i64* %10, align 8
  br label %133

133:                                              ; preds = %121, %118
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* %9, align 8
  %136 = add i64 %134, %135
  %137 = load i64, i64* %10, align 8
  %138 = icmp ugt i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %133
  %143 = load i32, i32* @EOVERFLOW, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %17, align 4
  %145 = load i64, i64* %15, align 8
  %146 = load i64, i64* %10, align 8
  %147 = icmp sge i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %209

149:                                              ; preds = %142
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* %15, align 8
  %152 = sub nsw i64 %150, %151
  store i64 %152, i64* %9, align 8
  br label %153

153:                                              ; preds = %149, %133
  store i32 0, i32* %18, align 4
  %154 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = call i32 @file_start_write(%struct.TYPE_11__* %155)
  %157 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = load i32, i32* %18, align 4
  %163 = call i32 @do_splice_direct(%struct.TYPE_11__* %158, i64* %15, %struct.TYPE_11__* %160, i64* %16, i64 %161, i32 %162)
  store i32 %163, i32* %17, align 4
  %164 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = call i32 @file_end_write(%struct.TYPE_11__* %165)
  %167 = load i32, i32* %17, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %197

169:                                              ; preds = %153
  %170 = load i32, i32* @current, align 4
  %171 = load i32, i32* %17, align 4
  %172 = call i32 @add_rchar(i32 %170, i32 %171)
  %173 = load i32, i32* @current, align 4
  %174 = load i32, i32* %17, align 4
  %175 = call i32 @add_wchar(i32 %173, i32 %174)
  %176 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = call i32 @fsnotify_access(%struct.TYPE_11__* %177)
  %179 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = call i32 @fsnotify_modify(%struct.TYPE_11__* %180)
  %182 = load i64, i64* %16, align 8
  %183 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  store i64 %182, i64* %185, align 8
  %186 = load i64*, i64** %8, align 8
  %187 = icmp ne i64* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %169
  %189 = load i64, i64* %15, align 8
  %190 = load i64*, i64** %8, align 8
  store i64 %189, i64* %190, align 8
  br label %196

191:                                              ; preds = %169
  %192 = load i64, i64* %15, align 8
  %193 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  store i64 %192, i64* %195, align 8
  br label %196

196:                                              ; preds = %191, %188
  br label %197

197:                                              ; preds = %196, %153
  %198 = load i32, i32* @current, align 4
  %199 = call i32 @inc_syscr(i32 %198)
  %200 = load i32, i32* @current, align 4
  %201 = call i32 @inc_syscw(i32 %200)
  %202 = load i64, i64* %15, align 8
  %203 = load i64, i64* %10, align 8
  %204 = icmp sgt i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %197
  %206 = load i32, i32* @EOVERFLOW, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %205, %197
  br label %209

209:                                              ; preds = %208, %148, %117, %98
  %210 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = call i32 @fdput(%struct.TYPE_11__* %211)
  br label %213

213:                                              ; preds = %209, %89, %71, %61, %40
  %214 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = call i32 @fdput(%struct.TYPE_11__* %215)
  br label %217

217:                                              ; preds = %213, %31
  %218 = load i32, i32* %17, align 4
  ret i32 %218
}

declare dso_local %struct.TYPE_11__* @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rw_verify_area(i32, %struct.TYPE_11__*, i64*, i64) #1

declare dso_local %struct.inode* @file_inode(%struct.TYPE_11__*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @file_start_write(%struct.TYPE_11__*) #1

declare dso_local i32 @do_splice_direct(%struct.TYPE_11__*, i64*, %struct.TYPE_11__*, i64*, i64, i32) #1

declare dso_local i32 @file_end_write(%struct.TYPE_11__*) #1

declare dso_local i32 @add_rchar(i32, i32) #1

declare dso_local i32 @add_wchar(i32, i32) #1

declare dso_local i32 @fsnotify_access(%struct.TYPE_11__*) #1

declare dso_local i32 @fsnotify_modify(%struct.TYPE_11__*) #1

declare dso_local i32 @inc_syscr(i32) #1

declare dso_local i32 @inc_syscw(i32) #1

declare dso_local i32 @fdput(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
