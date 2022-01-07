; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c___fuse_copy_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c___fuse_copy_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.fuse_write_out* }
%struct.fuse_write_out = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.fuse_copy_file_range_in* }
%struct.fuse_copy_file_range_in = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32, i32, %struct.fuse_conn* }
%struct.fuse_conn = type { i32, i64 }
%struct.inode = type { i64, i64 }
%struct.fuse_inode = type { i32 }

@args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@FUSE_I_SIZE_UNSTABLE = common dso_local global i32 0, align 4
@FUSE_COPY_FILE_RANGE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, %struct.file*, i64, i64, i32)* @__fuse_copy_file_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fuse_copy_file_range(%struct.file* %0, i64 %1, %struct.file* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fuse_file*, align 8
  %15 = alloca %struct.fuse_file*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.fuse_inode*, align 8
  %19 = alloca %struct.fuse_conn*, align 8
  %20 = alloca %struct.fuse_copy_file_range_in, align 8
  %21 = alloca %struct.fuse_write_out, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load %struct.file*, %struct.file** %8, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.fuse_file*, %struct.fuse_file** %25, align 8
  store %struct.fuse_file* %26, %struct.fuse_file** %14, align 8
  %27 = load %struct.file*, %struct.file** %10, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load %struct.fuse_file*, %struct.fuse_file** %28, align 8
  store %struct.fuse_file* %29, %struct.fuse_file** %15, align 8
  %30 = load %struct.file*, %struct.file** %8, align 8
  %31 = call %struct.inode* @file_inode(%struct.file* %30)
  store %struct.inode* %31, %struct.inode** %16, align 8
  %32 = load %struct.file*, %struct.file** %10, align 8
  %33 = call %struct.inode* @file_inode(%struct.file* %32)
  store %struct.inode* %33, %struct.inode** %17, align 8
  %34 = load %struct.inode*, %struct.inode** %17, align 8
  %35 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %34)
  store %struct.fuse_inode* %35, %struct.fuse_inode** %18, align 8
  %36 = load %struct.fuse_file*, %struct.fuse_file** %14, align 8
  %37 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %36, i32 0, i32 2
  %38 = load %struct.fuse_conn*, %struct.fuse_conn** %37, align 8
  store %struct.fuse_conn* %38, %struct.fuse_conn** %19, align 8
  %39 = call i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 @args)
  %40 = getelementptr inbounds %struct.fuse_copy_file_range_in, %struct.fuse_copy_file_range_in* %20, i32 0, i32 0
  %41 = load i64, i64* %9, align 8
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds %struct.fuse_copy_file_range_in, %struct.fuse_copy_file_range_in* %20, i32 0, i32 1
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %42, align 8
  %44 = getelementptr inbounds %struct.fuse_copy_file_range_in, %struct.fuse_copy_file_range_in* %20, i32 0, i32 2
  %45 = load i64, i64* %12, align 8
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds %struct.fuse_copy_file_range_in, %struct.fuse_copy_file_range_in* %20, i32 0, i32 3
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.fuse_copy_file_range_in, %struct.fuse_copy_file_range_in* %20, i32 0, i32 4
  %49 = load %struct.fuse_file*, %struct.fuse_file** %15, align 8
  %50 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %48, align 4
  %52 = getelementptr inbounds %struct.fuse_copy_file_range_in, %struct.fuse_copy_file_range_in* %20, i32 0, i32 5
  %53 = load %struct.fuse_file*, %struct.fuse_file** %15, align 8
  %54 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %52, align 8
  %56 = getelementptr inbounds %struct.fuse_copy_file_range_in, %struct.fuse_copy_file_range_in* %20, i32 0, i32 6
  %57 = load %struct.fuse_file*, %struct.fuse_file** %14, align 8
  %58 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %56, align 4
  %60 = load %struct.fuse_conn*, %struct.fuse_conn** %19, align 8
  %61 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %6
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %65, %66
  %68 = load %struct.inode*, %struct.inode** %17, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ugt i64 %67, %70
  br label %72

72:                                               ; preds = %64, %6
  %73 = phi i1 [ false, %6 ], [ %71, %64 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %23, align 4
  %75 = load %struct.fuse_conn*, %struct.fuse_conn** %19, align 8
  %76 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %214

82:                                               ; preds = %72
  %83 = load %struct.file*, %struct.file** %8, align 8
  %84 = call %struct.inode* @file_inode(%struct.file* %83)
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.file*, %struct.file** %10, align 8
  %88 = call %struct.inode* @file_inode(%struct.file* %87)
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %86, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i32, i32* @EXDEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %214

95:                                               ; preds = %82
  %96 = load %struct.fuse_conn*, %struct.fuse_conn** %19, align 8
  %97 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load %struct.inode*, %struct.inode** %16, align 8
  %102 = call i32 @inode_lock(%struct.inode* %101)
  %103 = load %struct.inode*, %struct.inode** %16, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %105, %106
  %108 = call i32 @fuse_writeback_range(%struct.inode* %103, i64 %104, i64 %107)
  store i32 %108, i32* %22, align 4
  %109 = load %struct.inode*, %struct.inode** %16, align 8
  %110 = call i32 @inode_unlock(%struct.inode* %109)
  %111 = load i32, i32* %22, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i32, i32* %22, align 4
  store i32 %114, i32* %7, align 4
  br label %214

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %95
  %117 = load %struct.inode*, %struct.inode** %17, align 8
  %118 = call i32 @inode_lock(%struct.inode* %117)
  %119 = load %struct.file*, %struct.file** %10, align 8
  %120 = call i32 @file_modified(%struct.file* %119)
  store i32 %120, i32* %22, align 4
  %121 = load i32, i32* %22, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %200

124:                                              ; preds = %116
  %125 = load %struct.fuse_conn*, %struct.fuse_conn** %19, align 8
  %126 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load %struct.inode*, %struct.inode** %17, align 8
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = add i64 %132, %133
  %135 = call i32 @fuse_writeback_range(%struct.inode* %130, i64 %131, i64 %134)
  store i32 %135, i32* %22, align 4
  %136 = load i32, i32* %22, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %200

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %124
  %141 = load i32, i32* %23, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, i32* @FUSE_I_SIZE_UNSTABLE, align 4
  %145 = load %struct.fuse_inode*, %struct.fuse_inode** %18, align 8
  %146 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %145, i32 0, i32 0
  %147 = call i32 @set_bit(i32 %144, i32* %146)
  br label %148

148:                                              ; preds = %143, %140
  %149 = load i32, i32* @FUSE_COPY_FILE_RANGE, align 4
  store i32 %149, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 5), align 4
  %150 = load %struct.fuse_file*, %struct.fuse_file** %14, align 8
  %151 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 3), align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i32 40, i32* %155, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 3), align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  store %struct.fuse_copy_file_range_in* %20, %struct.fuse_copy_file_range_in** %158, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 1), align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store i32 4, i32* %161, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  store %struct.fuse_write_out* %21, %struct.fuse_write_out** %164, align 8
  %165 = load %struct.fuse_conn*, %struct.fuse_conn** %19, align 8
  %166 = call i32 @fuse_simple_request(%struct.fuse_conn* %165, %struct.TYPE_8__* @args)
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* @ENOSYS, align 4
  %169 = sub nsw i32 0, %168
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %148
  %172 = load %struct.fuse_conn*, %struct.fuse_conn** %19, align 8
  %173 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load i32, i32* @EOPNOTSUPP, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %22, align 4
  br label %176

176:                                              ; preds = %171, %148
  %177 = load i32, i32* %22, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %200

180:                                              ; preds = %176
  %181 = load %struct.fuse_conn*, %struct.fuse_conn** %19, align 8
  %182 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  %186 = load %struct.inode*, %struct.inode** %17, align 8
  %187 = load i64, i64* %11, align 8
  %188 = getelementptr inbounds %struct.fuse_write_out, %struct.fuse_write_out* %21, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %187, %190
  %192 = call i32 @fuse_write_update_size(%struct.inode* %186, i64 %191)
  %193 = load %struct.file*, %struct.file** %10, align 8
  %194 = call i32 @file_update_time(%struct.file* %193)
  br label %195

195:                                              ; preds = %185, %180
  %196 = load %struct.inode*, %struct.inode** %17, align 8
  %197 = call i32 @fuse_invalidate_attr(%struct.inode* %196)
  %198 = getelementptr inbounds %struct.fuse_write_out, %struct.fuse_write_out* %21, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %22, align 4
  br label %200

200:                                              ; preds = %195, %179, %138, %123
  %201 = load i32, i32* %23, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i32, i32* @FUSE_I_SIZE_UNSTABLE, align 4
  %205 = load %struct.fuse_inode*, %struct.fuse_inode** %18, align 8
  %206 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %205, i32 0, i32 0
  %207 = call i32 @clear_bit(i32 %204, i32* %206)
  br label %208

208:                                              ; preds = %203, %200
  %209 = load %struct.inode*, %struct.inode** %17, align 8
  %210 = call i32 @inode_unlock(%struct.inode* %209)
  %211 = load %struct.file*, %struct.file** %8, align 8
  %212 = call i32 @file_accessed(%struct.file* %211)
  %213 = load i32, i32* %22, align 4
  store i32 %213, i32* %7, align 4
  br label %214

214:                                              ; preds = %208, %113, %92, %79
  %215 = load i32, i32* %7, align 4
  ret i32 %215
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @fuse_writeback_range(%struct.inode*, i64, i64) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @file_modified(%struct.file*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_8__*) #1

declare dso_local i32 @fuse_write_update_size(%struct.inode*, i64) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
