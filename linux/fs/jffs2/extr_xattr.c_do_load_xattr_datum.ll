; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_do_load_xattr_datum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_do_load_xattr_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i64, i32* }
%struct.jffs2_xattr_datum = type { i32, i32, i64, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@REF_PRISTINE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"jffs2_flash_read() returned %d, request=%d, readlen=%zu, at %#08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"node CRC failed (JFFS2_NODETYPE_XATTR) at %#08x, read: 0x%08x calculated: 0x%08x\0A\00", align 1
@JFFS2_XFLAGS_INVALID = common dso_local global i32 0, align 4
@JFFS2_XATTR_IS_CORRUPTED = common dso_local global i32 0, align 4
@JFFS2_XFLAGS_HOT = common dso_local global i32 0, align 4
@XATTRINDEX_HASHSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"success on loading xdatum (xid=%u, xprefix=%u, xname='%s')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*)* @do_load_xattr_datum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_load_xattr_datum(%struct.jffs2_sb_info* %0, %struct.jffs2_xattr_datum* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_xattr_datum*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_xattr_datum* %1, %struct.jffs2_xattr_datum** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %14 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ref_flags(i32 %15)
  %17 = load i64, i64* @REF_PRISTINE, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %22 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %21, i32 0, i32 8
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  br label %28

28:                                               ; preds = %178, %2
  %29 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %30 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %34 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kmalloc(i64 %38, i32 %39)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %191

46:                                               ; preds = %28
  %47 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %48 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %49 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ref_offset(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @jffs2_flash_read(%struct.jffs2_sb_info* %47, i32 %54, i64 %55, i64* %7, i8* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %46
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %60, %46
  %65 = load i32, i32* %11, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %69 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ref_offset(i32 %70)
  %72 = call i32 (i8*, i32, i64, i64, ...) @JFFS2_WARNING(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %65, i64 %66, i64 %67, i32 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @kfree(i8* %73)
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %11, align 4
  br label %82

79:                                               ; preds = %64
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi i32 [ %78, %77 ], [ %81, %79 ]
  store i32 %83, i32* %3, align 4
  br label %191

84:                                               ; preds = %60
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %87 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i64 @crc32(i32 0, i8* %91, i64 %92)
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %96 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %84
  %100 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %101 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ref_offset(i32 %102)
  %104 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %105 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 (i8*, i32, i64, i64, ...) @JFFS2_WARNING(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %103, i64 %106, i64 %107)
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @kfree(i8* %109)
  %111 = load i32, i32* @JFFS2_XFLAGS_INVALID, align 4
  %112 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %113 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* @JFFS2_XATTR_IS_CORRUPTED, align 4
  store i32 %116, i32* %3, align 4
  br label %191

117:                                              ; preds = %84
  %118 = load i32, i32* @JFFS2_XFLAGS_HOT, align 4
  %119 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %120 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %125 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %128 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %134 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %137 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, %135
  store i64 %139, i64* %137, align 8
  %140 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %141 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %144 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %147 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %150 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @xattr_datum_hashkey(i32 %142, i8* %145, i8* %148, i32 %151)
  %153 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %154 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 8
  %155 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %156 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @XATTRINDEX_HASHSIZE, align 4
  %159 = srem i32 %157, %158
  store i32 %159, i32* %10, align 4
  %160 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %161 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %160, i32 0, i32 8
  %162 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %163 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = call i32 @list_add(i32* %161, i32* %167)
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %117
  store i32 1, i32* %12, align 4
  %172 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %173 = call i32 @reclaim_xattr_datum(%struct.jffs2_sb_info* %172)
  %174 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %175 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %174, i32 0, i32 3
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %171
  br label %28

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179, %117
  %181 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %182 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %185 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %188 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @dbg_xattr(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %183, i32 %186, i8* %189)
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %180, %99, %82, %43
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ref_flags(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @jffs2_flash_read(%struct.jffs2_sb_info*, i32, i64, i64*, i8*) #1

declare dso_local i32 @ref_offset(i32) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i32, i64, i64, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @crc32(i32, i8*, i64) #1

declare dso_local i32 @xattr_datum_hashkey(i32, i8*, i8*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @reclaim_xattr_datum(%struct.jffs2_sb_info*) #1

declare dso_local i32 @dbg_xattr(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
