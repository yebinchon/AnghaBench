; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_sb_in.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_sb_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.super_block*, %struct.gfs2_sb_host }
%struct.super_block = type { i32 }
%struct.gfs2_sb_host = type { i32*, i32*, %struct.TYPE_9__, %struct.TYPE_7__, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.gfs2_sb = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@GFS2_LOCKNAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*, i8*)* @gfs2_sb_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_sb_in(%struct.gfs2_sbd* %0, i8* %1) #0 {
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gfs2_sb_host*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.gfs2_sb*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %8, i32 0, i32 1
  store %struct.gfs2_sb_host* %9, %struct.gfs2_sb_host** %5, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.gfs2_sb*
  store %struct.gfs2_sb* %14, %struct.gfs2_sb** %7, align 8
  %15 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %16 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @be32_to_cpu(i32 %18)
  %20 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %21 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %20, i32 0, i32 10
  store i8* %19, i8** %21, align 8
  %22 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %23 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @be32_to_cpu(i32 %25)
  %27 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %28 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %27, i32 0, i32 9
  store i8* %26, i8** %28, align 8
  %29 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %30 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @be32_to_cpu(i32 %32)
  %34 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %35 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  %36 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %37 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @be32_to_cpu(i32 %38)
  %40 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %41 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %43 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @be32_to_cpu(i32 %44)
  %46 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %47 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %49 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @be32_to_cpu(i32 %50)
  %52 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %53 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %55 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @be32_to_cpu(i32 %56)
  %58 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %59 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %61 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @be64_to_cpu(i32 %63)
  %65 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %66 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %69 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @be64_to_cpu(i32 %71)
  %73 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %74 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  %76 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %77 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @be64_to_cpu(i32 %79)
  %81 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %82 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i8* %80, i8** %83, align 8
  %84 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %85 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @be64_to_cpu(i32 %87)
  %89 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %90 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  %92 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %93 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %96 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @GFS2_LOCKNAME_LEN, align 4
  %99 = call i32 @memcpy(i32* %94, i32 %97, i32 %98)
  %100 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %5, align 8
  %101 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %104 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @GFS2_LOCKNAME_LEN, align 4
  %107 = call i32 @memcpy(i32* %102, i32 %105, i32 %106)
  %108 = load %struct.super_block*, %struct.super_block** %6, align 8
  %109 = getelementptr inbounds %struct.super_block, %struct.super_block* %108, i32 0, i32 0
  %110 = load %struct.gfs2_sb*, %struct.gfs2_sb** %7, align 8
  %111 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @memcpy(i32* %109, i32 %112, i32 16)
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
