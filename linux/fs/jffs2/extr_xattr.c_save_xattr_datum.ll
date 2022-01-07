; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_save_xattr_datum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_save_xattr_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_xattr_datum = type { i32, i32, i32, %struct.jffs2_raw_xattr*, i32, i32, i32 }
%struct.jffs2_raw_xattr = type { i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.kvec = type { i32, %struct.jffs2_raw_xattr* }

@JFFS2_XFLAGS_DEAD = common dso_local global i32 0, align 4
@JFFS2_XFLAGS_INVALID = common dso_local global i32 0, align 4
@JFFS2_MAGIC_BITMASK = common dso_local global i32 0, align 4
@JFFS2_NODETYPE_XATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"jffs2_flash_writev()=%d, req=%u, wrote=%zu, at %#08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@REF_OBSOLETE = common dso_local global i32 0, align 4
@REF_PRISTINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"success on saving xdatum (xid=%u, version=%u, xprefix=%u, xname='%s')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*)* @save_xattr_datum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_xattr_datum(%struct.jffs2_sb_info* %0, %struct.jffs2_xattr_datum* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_xattr_datum*, align 8
  %6 = alloca %struct.jffs2_raw_xattr, align 8
  %7 = alloca [2 x %struct.kvec], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_xattr_datum* %1, %struct.jffs2_xattr_datum** %5, align 8
  %12 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %13 = call i32 @write_ofs(%struct.jffs2_sb_info* %12)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %15 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %14, i32 0, i32 3
  %16 = load %struct.jffs2_raw_xattr*, %struct.jffs2_raw_xattr** %15, align 8
  %17 = icmp ne %struct.jffs2_raw_xattr* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %22 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @JFFS2_XFLAGS_DEAD, align 4
  %25 = load i32, i32* @JFFS2_XFLAGS_INVALID, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %29, i32 0, i32 1
  store %struct.jffs2_raw_xattr* %6, %struct.jffs2_raw_xattr** %30, align 8
  %31 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %31, i32 0, i32 0
  store i32 88, i32* %32, align 16
  %33 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %34 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %33, i32 0, i32 3
  %35 = load %struct.jffs2_raw_xattr*, %struct.jffs2_raw_xattr** %34, align 8
  %36 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %36, i32 0, i32 1
  store %struct.jffs2_raw_xattr* %35, %struct.jffs2_raw_xattr** %37, align 8
  %38 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %39 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %43 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %47 = getelementptr inbounds %struct.kvec, %struct.kvec* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 16
  %48 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 16
  %51 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %52 = getelementptr inbounds %struct.kvec, %struct.kvec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 16
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* %10, align 4
  %55 = call i32 @memset(%struct.jffs2_raw_xattr* %6, i32 0, i32 88)
  %56 = load i32, i32* @JFFS2_MAGIC_BITMASK, align 4
  %57 = call i8* @cpu_to_je16(i32 %56)
  %58 = getelementptr inbounds %struct.jffs2_raw_xattr, %struct.jffs2_raw_xattr* %6, i32 0, i32 10
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* @JFFS2_NODETYPE_XATTR, align 4
  %60 = call i8* @cpu_to_je16(i32 %59)
  %61 = getelementptr inbounds %struct.jffs2_raw_xattr, %struct.jffs2_raw_xattr* %6, i32 0, i32 9
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @PAD(i32 %62)
  %64 = call i8* @cpu_to_je32(i32 %63)
  %65 = getelementptr inbounds %struct.jffs2_raw_xattr, %struct.jffs2_raw_xattr* %6, i32 0, i32 8
  store i8* %64, i8** %65, align 8
  %66 = call i32 @crc32(i32 0, %struct.jffs2_raw_xattr* %6, i32 0)
  %67 = call i8* @cpu_to_je32(i32 %66)
  %68 = getelementptr inbounds %struct.jffs2_raw_xattr, %struct.jffs2_raw_xattr* %6, i32 0, i32 7
  store i8* %67, i8** %68, align 8
  %69 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %70 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @cpu_to_je32(i32 %71)
  %73 = getelementptr inbounds %struct.jffs2_raw_xattr, %struct.jffs2_raw_xattr* %6, i32 0, i32 6
  store i8* %72, i8** %73, align 8
  %74 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %75 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = call i8* @cpu_to_je32(i32 %77)
  %79 = getelementptr inbounds %struct.jffs2_raw_xattr, %struct.jffs2_raw_xattr* %6, i32 0, i32 5
  store i8* %78, i8** %79, align 8
  %80 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %81 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.jffs2_raw_xattr, %struct.jffs2_raw_xattr* %6, i32 0, i32 4
  store i32 %82, i32* %83, align 8
  %84 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %85 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.jffs2_raw_xattr, %struct.jffs2_raw_xattr* %6, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %89 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @cpu_to_je16(i32 %90)
  %92 = getelementptr inbounds %struct.jffs2_raw_xattr, %struct.jffs2_raw_xattr* %6, i32 0, i32 3
  store i8* %91, i8** %92, align 8
  %93 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %94 = getelementptr inbounds %struct.kvec, %struct.kvec* %93, i32 0, i32 1
  %95 = load %struct.jffs2_raw_xattr*, %struct.jffs2_raw_xattr** %94, align 8
  %96 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 1
  %97 = getelementptr inbounds %struct.kvec, %struct.kvec* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 16
  %99 = call i32 @crc32(i32 0, %struct.jffs2_raw_xattr* %95, i32 %98)
  %100 = call i8* @cpu_to_je32(i32 %99)
  %101 = getelementptr inbounds %struct.jffs2_raw_xattr, %struct.jffs2_raw_xattr* %6, i32 0, i32 2
  store i8* %100, i8** %101, align 8
  %102 = call i32 @crc32(i32 0, %struct.jffs2_raw_xattr* %6, i32 84)
  %103 = call i8* @cpu_to_je32(i32 %102)
  %104 = getelementptr inbounds %struct.jffs2_raw_xattr, %struct.jffs2_raw_xattr* %6, i32 0, i32 1
  store i8* %103, i8** %104, align 8
  %105 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %106 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %7, i64 0, i64 0
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @jffs2_flash_writev(%struct.jffs2_sb_info* %105, %struct.kvec* %106, i32 2, i32 %107, i64* %8, i32 0)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %2
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %8, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %143

116:                                              ; preds = %111, %2
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i64, i64* %8, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @JFFS2_WARNING(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118, i64 %119, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* %9, align 4
  br label %129

126:                                              ; preds = %116
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi i32 [ %125, %124 ], [ %128, %126 ]
  store i32 %130, i32* %9, align 4
  %131 = load i64, i64* %8, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @REF_OBSOLETE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @PAD(i32 %138)
  %140 = call i32 @jffs2_add_physical_node_ref(%struct.jffs2_sb_info* %134, i32 %137, i32 %139, i8* null)
  br label %141

141:                                              ; preds = %133, %129
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %3, align 4
  br label %166

143:                                              ; preds = %111
  %144 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @REF_PRISTINE, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @PAD(i32 %148)
  %150 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %151 = bitcast %struct.jffs2_xattr_datum* %150 to i8*
  %152 = call i32 @jffs2_add_physical_node_ref(%struct.jffs2_sb_info* %144, i32 %147, i32 %149, i8* %151)
  %153 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %154 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %157 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %160 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %163 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %162, i32 0, i32 3
  %164 = load %struct.jffs2_raw_xattr*, %struct.jffs2_raw_xattr** %163, align 8
  %165 = call i32 @dbg_xattr(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %158, i32 %161, %struct.jffs2_raw_xattr* %164)
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %143, %141
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @write_ofs(%struct.jffs2_sb_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.jffs2_raw_xattr*, i32, i32) #1

declare dso_local i8* @cpu_to_je16(i32) #1

declare dso_local i8* @cpu_to_je32(i32) #1

declare dso_local i32 @PAD(i32) #1

declare dso_local i32 @crc32(i32, %struct.jffs2_raw_xattr*, i32) #1

declare dso_local i32 @jffs2_flash_writev(%struct.jffs2_sb_info*, %struct.kvec*, i32, i32, i64*, i32) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @jffs2_add_physical_node_ref(%struct.jffs2_sb_info*, i32, i32, i8*) #1

declare dso_local i32 @dbg_xattr(i8*, i32, i32, i32, %struct.jffs2_raw_xattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
