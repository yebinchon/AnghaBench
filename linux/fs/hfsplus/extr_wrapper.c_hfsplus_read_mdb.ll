; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_wrapper.c_hfsplus_read_mdb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_wrapper.c_hfsplus_read_mdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsplus_wd = type { i32, i32, i32, i8* }

@HFSP_WRAPOFF_EMBEDSIG = common dso_local global i32 0, align 4
@HFSPLUS_VOLHEAD_SIG = common dso_local global i32 0, align 4
@HFSPLUS_VOLHEAD_SIGX = common dso_local global i32 0, align 4
@HFSP_WRAPOFF_ATTRIB = common dso_local global i32 0, align 4
@HFSP_WRAP_ATTRIB_SLOCK = common dso_local global i32 0, align 4
@HFSP_WRAP_ATTRIB_SPARED = common dso_local global i32 0, align 4
@HFSP_WRAPOFF_ABLKSIZE = common dso_local global i32 0, align 4
@HFSPLUS_SECTOR_SIZE = common dso_local global i32 0, align 4
@HFSP_WRAPOFF_ABLKSTART = common dso_local global i32 0, align 4
@HFSP_WRAPOFF_EMBEDEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hfsplus_wd*)* @hfsplus_read_mdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_read_mdb(i8* %0, %struct.hfsplus_wd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hfsplus_wd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.hfsplus_wd* %1, %struct.hfsplus_wd** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @HFSP_WRAPOFF_EMBEDSIG, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr i8, i8* %9, i64 %11
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* @HFSPLUS_VOLHEAD_SIG, align 4
  %17 = call i64 @cpu_to_be16(i32 %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @HFSPLUS_VOLHEAD_SIGX, align 4
  %22 = call i64 @cpu_to_be16(i32 %21)
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %92

25:                                               ; preds = %19, %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* @HFSP_WRAPOFF_ATTRIB, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %26, i64 %28
  %30 = bitcast i8* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @be16_to_cpu(i64 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @HFSP_WRAP_ATTRIB_SLOCK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @HFSP_WRAP_ATTRIB_SPARED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %25
  store i32 0, i32* %3, align 4
  br label %92

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @HFSP_WRAPOFF_ABLKSIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %45, i64 %47
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be32_to_cpu(i32 %50)
  %52 = load %struct.hfsplus_wd*, %struct.hfsplus_wd** %5, align 8
  %53 = getelementptr inbounds %struct.hfsplus_wd, %struct.hfsplus_wd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.hfsplus_wd*, %struct.hfsplus_wd** %5, align 8
  %55 = getelementptr inbounds %struct.hfsplus_wd, %struct.hfsplus_wd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @HFSPLUS_SECTOR_SIZE, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %92

60:                                               ; preds = %44
  %61 = load %struct.hfsplus_wd*, %struct.hfsplus_wd** %5, align 8
  %62 = getelementptr inbounds %struct.hfsplus_wd, %struct.hfsplus_wd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HFSPLUS_SECTOR_SIZE, align 4
  %65 = srem i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %92

68:                                               ; preds = %60
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* @HFSP_WRAPOFF_ABLKSTART, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %69, i64 %71
  %73 = bitcast i8* %72 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @be16_to_cpu(i64 %74)
  %76 = load %struct.hfsplus_wd*, %struct.hfsplus_wd** %5, align 8
  %77 = getelementptr inbounds %struct.hfsplus_wd, %struct.hfsplus_wd* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* @HFSP_WRAPOFF_EMBEDEXT, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %78, i64 %80
  %82 = call i32 @get_unaligned_be32(i8* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 65535
  %86 = load %struct.hfsplus_wd*, %struct.hfsplus_wd** %5, align 8
  %87 = getelementptr inbounds %struct.hfsplus_wd, %struct.hfsplus_wd* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 65535
  %90 = load %struct.hfsplus_wd*, %struct.hfsplus_wd** %5, align 8
  %91 = getelementptr inbounds %struct.hfsplus_wd, %struct.hfsplus_wd* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %68, %67, %59, %43, %24
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i8* @be16_to_cpu(i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
