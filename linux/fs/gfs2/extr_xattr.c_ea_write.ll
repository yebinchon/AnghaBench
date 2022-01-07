; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_ea_header = type { i32, i32, i64, i32, i32 }
%struct.gfs2_ea_request = type { i32, i32, i8*, i8*, i32 }
%struct.gfs2_sbd = type { i64 }
%struct.buffer_head = type { i32, i64 }

@GFS2_METATYPE_ED = common dso_local global i32 0, align 4
@GFS2_FORMAT_ED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_ea_header*, %struct.gfs2_ea_request*)* @ea_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_write(%struct.gfs2_inode* %0, %struct.gfs2_ea_header* %1, %struct.gfs2_ea_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_ea_header*, align 8
  %7 = alloca %struct.gfs2_ea_request*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.gfs2_ea_header* %1, %struct.gfs2_ea_header** %6, align 8
  store %struct.gfs2_ea_request* %2, %struct.gfs2_ea_request** %7, align 8
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 0
  %21 = call %struct.gfs2_sbd* @GFS2_SB(i32* %20)
  store %struct.gfs2_sbd* %21, %struct.gfs2_sbd** %8, align 8
  %22 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %7, align 8
  %23 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cpu_to_be32(i32 %24)
  %26 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %27 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %7, align 8
  %29 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %32 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %7, align 8
  %34 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %37 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %39 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %41 = call i64 @GFS2_EA2NAME(%struct.gfs2_ea_header* %40)
  %42 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %7, align 8
  %43 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %7, align 8
  %46 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i64 %41, i8* %44, i32 %47)
  %49 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %7, align 8
  %50 = call i64 @GFS2_EAREQ_SIZE_STUFFED(%struct.gfs2_ea_request* %49)
  %51 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %52 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %3
  %56 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %57 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %59 = call i64 @GFS2_EA2DATA(%struct.gfs2_ea_header* %58)
  %60 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %7, align 8
  %61 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %7, align 8
  %64 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memcpy(i64 %59, i8* %62, i32 %65)
  br label %194

67:                                               ; preds = %3
  %68 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %69 = call i32* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header* %68)
  store i32* %69, i32** %10, align 8
  %70 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %7, align 8
  %71 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %11, align 8
  %73 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %7, align 8
  %74 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %12, align 4
  %76 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %7, align 8
  %77 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %80 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @DIV_ROUND_UP(i32 %78, i64 %81)
  %83 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %84 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %184, %67
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %6, align 8
  %88 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %187

91:                                               ; preds = %85
  store i32 4, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %92 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %93 = call i32 @gfs2_alloc_blocks(%struct.gfs2_inode* %92, i32* %16, i32* %18, i32 0, i32* null)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %195

98:                                               ; preds = %91
  %99 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @gfs2_trans_remove_revoke(%struct.gfs2_sbd* %99, i32 %100, i32 1)
  %102 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %103 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call %struct.buffer_head* @gfs2_meta_new(i32 %104, i32 %105)
  store %struct.buffer_head* %106, %struct.buffer_head** %15, align 8
  %107 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %108 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %111 = call i32 @gfs2_trans_add_meta(i32 %109, %struct.buffer_head* %110)
  %112 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %113 = load i32, i32* @GFS2_METATYPE_ED, align 4
  %114 = load i32, i32* @GFS2_FORMAT_ED, align 4
  %115 = call i32 @gfs2_metatype_set(%struct.buffer_head* %112, i32 %113, i32 %114)
  %116 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %117 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %116, i32 0, i32 0
  %118 = call i32 @gfs2_add_inode_blocks(i32* %117, i32 1)
  %119 = load i32, i32* %12, align 4
  %120 = zext i32 %119 to i64
  %121 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %122 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %98
  %126 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %127 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  br label %132

129:                                              ; preds = %98
  %130 = load i32, i32* %12, align 4
  %131 = zext i32 %130 to i64
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi i64 [ %128, %125 ], [ %131, %129 ]
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %13, align 4
  %135 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %136 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %137, %139
  %141 = load i8*, i8** %11, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @memcpy(i64 %140, i8* %141, i32 %142)
  %144 = load i32, i32* %13, align 4
  %145 = zext i32 %144 to i64
  %146 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %147 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %145, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %132
  %151 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %152 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = load i32, i32* %13, align 4
  %158 = zext i32 %157 to i64
  %159 = add nsw i64 %156, %158
  %160 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %161 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = zext i32 %163 to i64
  %165 = sub nsw i64 %162, %164
  %166 = trunc i64 %165 to i32
  %167 = call i32 @memset(i64 %159, i32 0, i32 %166)
  br label %168

168:                                              ; preds = %150, %132
  %169 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %170 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @cpu_to_be64(i32 %171)
  %173 = load i32*, i32** %10, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %10, align 8
  store i32 %172, i32* %173, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i8*, i8** %11, align 8
  %177 = zext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8* %178, i8** %11, align 8
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %12, align 4
  %181 = sub i32 %180, %179
  store i32 %181, i32* %12, align 4
  %182 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %183 = call i32 @brelse(%struct.buffer_head* %182)
  br label %184

184:                                              ; preds = %168
  %185 = load i32, i32* %14, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %14, align 4
  br label %85

187:                                              ; preds = %85
  %188 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i32 @gfs2_assert_withdraw(%struct.gfs2_sbd* %188, i32 %192)
  br label %194

194:                                              ; preds = %187, %55
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %96
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @GFS2_EA2NAME(%struct.gfs2_ea_header*) #1

declare dso_local i64 @GFS2_EAREQ_SIZE_STUFFED(%struct.gfs2_ea_request*) #1

declare dso_local i64 @GFS2_EA2DATA(%struct.gfs2_ea_header*) #1

declare dso_local i32* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

declare dso_local i32 @gfs2_alloc_blocks(%struct.gfs2_inode*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @gfs2_trans_remove_revoke(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local %struct.buffer_head* @gfs2_meta_new(i32, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_metatype_set(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(i32*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
