; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_vfs_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_vfs_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.file*, i32, i64, i64)* }
%struct.inode = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@FALLOC_FL_SUPPORTED_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@FALLOC_FL_ZERO_RANGE = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@FALLOC_FL_COLLAPSE_RANGE = common dso_local global i32 0, align 4
@FALLOC_FL_INSERT_RANGE = common dso_local global i32 0, align 4
@FALLOC_FL_UNSHARE_RANGE = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_fallocate(%struct.file* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = call %struct.inode* @file_inode(%struct.file* %12)
  store %struct.inode* %13, %struct.inode** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %231

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @FALLOC_FL_SUPPORTED_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %231

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %34 = load i32, i32* @FALLOC_FL_ZERO_RANGE, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %38 = load i32, i32* @FALLOC_FL_ZERO_RANGE, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %231

44:                                               ; preds = %31
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %231

57:                                               ; preds = %49, %44
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @FALLOC_FL_COLLAPSE_RANGE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @FALLOC_FL_COLLAPSE_RANGE, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %231

71:                                               ; preds = %62, %57
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @FALLOC_FL_INSERT_RANGE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @FALLOC_FL_INSERT_RANGE, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %231

85:                                               ; preds = %76, %71
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @FALLOC_FL_UNSHARE_RANGE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @FALLOC_FL_UNSHARE_RANGE, align 4
  %93 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %91, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %231

101:                                              ; preds = %90, %85
  %102 = load %struct.file*, %struct.file** %6, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @FMODE_WRITE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* @EBADF, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %231

111:                                              ; preds = %101
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.inode*, %struct.inode** %10, align 8
  %119 = call i64 @IS_APPEND(%struct.inode* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i32, i32* @EPERM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %231

124:                                              ; preds = %117, %111
  %125 = load %struct.inode*, %struct.inode** %10, align 8
  %126 = call i64 @IS_IMMUTABLE(%struct.inode* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @EPERM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %231

131:                                              ; preds = %124
  %132 = load %struct.inode*, %struct.inode** %10, align 8
  %133 = call i64 @IS_SWAPFILE(%struct.inode* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* @ETXTBSY, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %231

138:                                              ; preds = %131
  %139 = load %struct.file*, %struct.file** %6, align 8
  %140 = load i32, i32* @MAY_WRITE, align 4
  %141 = call i64 @security_file_permission(%struct.file* %139, i32 %140)
  store i64 %141, i64* %11, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i64, i64* %11, align 8
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %5, align 4
  br label %231

147:                                              ; preds = %138
  %148 = load %struct.inode*, %struct.inode** %10, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @S_ISFIFO(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* @ESPIPE, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %5, align 4
  br label %231

156:                                              ; preds = %147
  %157 = load %struct.inode*, %struct.inode** %10, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @S_ISDIR(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i32, i32* @EISDIR, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %5, align 4
  br label %231

165:                                              ; preds = %156
  %166 = load %struct.inode*, %struct.inode** %10, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @S_ISREG(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %165
  %172 = load %struct.inode*, %struct.inode** %10, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @S_ISBLK(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %171
  %178 = load i32, i32* @ENODEV, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %5, align 4
  br label %231

180:                                              ; preds = %171, %165
  %181 = load i64, i64* %8, align 8
  %182 = load i64, i64* %9, align 8
  %183 = add nsw i64 %181, %182
  %184 = load %struct.inode*, %struct.inode** %10, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 0
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %183, %188
  br i1 %189, label %195, label %190

190:                                              ; preds = %180
  %191 = load i64, i64* %8, align 8
  %192 = load i64, i64* %9, align 8
  %193 = add nsw i64 %191, %192
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190, %180
  %196 = load i32, i32* @EFBIG, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %5, align 4
  br label %231

198:                                              ; preds = %190
  %199 = load %struct.file*, %struct.file** %6, align 8
  %200 = getelementptr inbounds %struct.file, %struct.file* %199, i32 0, i32 1
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i64 (%struct.file*, i32, i64, i64)*, i64 (%struct.file*, i32, i64, i64)** %202, align 8
  %204 = icmp ne i64 (%struct.file*, i32, i64, i64)* %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %198
  %206 = load i32, i32* @EOPNOTSUPP, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %5, align 4
  br label %231

208:                                              ; preds = %198
  %209 = load %struct.file*, %struct.file** %6, align 8
  %210 = call i32 @file_start_write(%struct.file* %209)
  %211 = load %struct.file*, %struct.file** %6, align 8
  %212 = getelementptr inbounds %struct.file, %struct.file* %211, i32 0, i32 1
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i64 (%struct.file*, i32, i64, i64)*, i64 (%struct.file*, i32, i64, i64)** %214, align 8
  %216 = load %struct.file*, %struct.file** %6, align 8
  %217 = load i32, i32* %7, align 4
  %218 = load i64, i64* %8, align 8
  %219 = load i64, i64* %9, align 8
  %220 = call i64 %215(%struct.file* %216, i32 %217, i64 %218, i64 %219)
  store i64 %220, i64* %11, align 8
  %221 = load i64, i64* %11, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %208
  %224 = load %struct.file*, %struct.file** %6, align 8
  %225 = call i32 @fsnotify_modify(%struct.file* %224)
  br label %226

226:                                              ; preds = %223, %208
  %227 = load %struct.file*, %struct.file** %6, align 8
  %228 = call i32 @file_end_write(%struct.file* %227)
  %229 = load i64, i64* %11, align 8
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %226, %205, %195, %177, %162, %153, %144, %135, %128, %121, %108, %98, %82, %68, %54, %41, %28, %19
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i64 @security_file_permission(%struct.file*, i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @file_start_write(%struct.file*) #1

declare dso_local i32 @fsnotify_modify(%struct.file*) #1

declare dso_local i32 @file_end_write(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
