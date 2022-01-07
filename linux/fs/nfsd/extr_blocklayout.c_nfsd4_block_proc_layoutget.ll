; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_blocklayout.c_nfsd4_block_proc_layoutget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_blocklayout.c_nfsd4_block_proc_layoutget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.inode*, i32, i64, %struct.iomap*, i32, i32*)* }
%struct.iomap = type { i64, i32, i32, i32 }
%struct.svc_fh = type { i32 }
%struct.nfsd4_layoutget = type { i64, %struct.pnfs_block_extent*, %struct.nfsd4_layout_seg }
%struct.pnfs_block_extent = type { i32, i64, i32, i32, i32 }
%struct.nfsd4_layout_seg = type { i32, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"pnfsd: I/O misaligned\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IOMODE_READ = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"pnfsd: extent smaller than minlength\0A\00", align 1
@PNFS_BLOCK_READ_DATA = common dso_local global i32 0, align 4
@PNFS_BLOCK_READWRITE_DATA = common dso_local global i32 0, align 4
@IOMODE_RW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"pnfsd: no soup for you!\0A\00", align 1
@PNFS_BLOCK_INVALID_DATA = common dso_local global i32 0, align 4
@PNFS_BLOCK_NONE_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"pnfsd: filesystem returned %d extent\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GET: 0x%llx:0x%llx %d\0A\00", align 1
@nfserr_layoutunavailable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.svc_fh*, %struct.nfsd4_layoutget*)* @nfsd4_block_proc_layoutget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_block_proc_layoutget(%struct.inode* %0, %struct.svc_fh* %1, %struct.nfsd4_layoutget* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca %struct.nfsd4_layoutget*, align 8
  %8 = alloca %struct.nfsd4_layout_seg*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pnfs_block_extent*, align 8
  %12 = alloca %struct.iomap, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %6, align 8
  store %struct.nfsd4_layoutget* %2, %struct.nfsd4_layoutget** %7, align 8
  %15 = load %struct.nfsd4_layoutget*, %struct.nfsd4_layoutget** %7, align 8
  %16 = getelementptr inbounds %struct.nfsd4_layoutget, %struct.nfsd4_layoutget* %15, i32 0, i32 2
  store %struct.nfsd4_layout_seg* %16, %struct.nfsd4_layout_seg** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @i_blocksize(%struct.inode* %20)
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %23 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %183

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.pnfs_block_extent* @kzalloc(i32 32, i32 %34)
  store %struct.pnfs_block_extent* %35, %struct.pnfs_block_extent** %11, align 8
  %36 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %37 = icmp ne %struct.pnfs_block_extent* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %178

39:                                               ; preds = %31
  %40 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %41 = load %struct.nfsd4_layoutget*, %struct.nfsd4_layoutget** %7, align 8
  %42 = getelementptr inbounds %struct.nfsd4_layoutget, %struct.nfsd4_layoutget* %41, i32 0, i32 1
  store %struct.pnfs_block_extent* %40, %struct.pnfs_block_extent** %42, align 8
  %43 = load %struct.super_block*, %struct.super_block** %9, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.inode*, i32, i64, %struct.iomap*, i32, i32*)*, i32 (%struct.inode*, i32, i64, %struct.iomap*, i32, i32*)** %46, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %50 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %53 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %56 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IOMODE_READ, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 %47(%struct.inode* %48, i32 %51, i64 %54, %struct.iomap* %12, i32 %60, i32* %13)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %39
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @ENXIO, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %183

70:                                               ; preds = %64
  br label %178

71:                                               ; preds = %39
  %72 = getelementptr inbounds %struct.iomap, %struct.iomap* %12, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.nfsd4_layoutget*, %struct.nfsd4_layoutget** %7, align 8
  %75 = getelementptr inbounds %struct.nfsd4_layoutget, %struct.nfsd4_layoutget* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %183

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.iomap, %struct.iomap* %12, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %138 [
    i32 129, label %83
    i32 128, label %102
    i32 130, label %126
    i32 131, label %137
  ]

83:                                               ; preds = %80
  %84 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %85 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IOMODE_READ, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @PNFS_BLOCK_READ_DATA, align 4
  %91 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %92 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  br label %97

93:                                               ; preds = %83
  %94 = load i32, i32* @PNFS_BLOCK_READWRITE_DATA, align 4
  %95 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %96 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %89
  %98 = getelementptr inbounds %struct.iomap, %struct.iomap* %12, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %101 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  br label %142

102:                                              ; preds = %80
  %103 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %104 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @IOMODE_RW, align 4
  %107 = sext i32 %106 to i64
  %108 = and i64 %105, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %102
  %111 = load %struct.nfsd4_layoutget*, %struct.nfsd4_layoutget** %7, align 8
  %112 = getelementptr inbounds %struct.nfsd4_layoutget, %struct.nfsd4_layoutget* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %183

117:                                              ; preds = %110
  %118 = load i32, i32* @PNFS_BLOCK_INVALID_DATA, align 4
  %119 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %120 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = getelementptr inbounds %struct.iomap, %struct.iomap* %12, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %124 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  br label %142

125:                                              ; preds = %102
  br label %126

126:                                              ; preds = %80, %125
  %127 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %128 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @IOMODE_READ, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* @PNFS_BLOCK_NONE_DATA, align 4
  %134 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %135 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  br label %142

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %80, %136
  br label %138

138:                                              ; preds = %80, %137
  %139 = getelementptr inbounds %struct.iomap, %struct.iomap* %12, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  br label %183

142:                                              ; preds = %132, %117, %97
  %143 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %144 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %143, i32 0, i32 3
  %145 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @nfsd4_set_deviceid(i32* %144, %struct.svc_fh* %145, i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %178

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.iomap, %struct.iomap* %12, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %155 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = getelementptr inbounds %struct.iomap, %struct.iomap* %12, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %159 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = getelementptr inbounds %struct.iomap, %struct.iomap* %12, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %163 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = getelementptr inbounds %struct.iomap, %struct.iomap* %12, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %167 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  %168 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %169 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %172 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %11, align 8
  %175 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %170, i64 %173, i32 %176)
  store i32 0, i32* %4, align 4
  br label %187

178:                                              ; preds = %150, %70, %38
  %179 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %180 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %179, i32 0, i32 1
  store i64 0, i64* %180, align 8
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @nfserrno(i32 %181)
  store i32 %182, i32* %4, align 4
  br label %187

183:                                              ; preds = %138, %115, %78, %69, %29
  %184 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %185 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %184, i32 0, i32 1
  store i64 0, i64* %185, align 8
  %186 = load i32, i32* @nfserr_layoutunavailable, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %183, %178, %151
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.pnfs_block_extent* @kzalloc(i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @nfsd4_set_deviceid(i32*, %struct.svc_fh*, i32) #1

declare dso_local i32 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
