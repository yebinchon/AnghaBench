; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_split_ea.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_split_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_ea_header = type { i32, i8* }

@GFS2_EAFLAG_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_ea_header* (%struct.gfs2_ea_header*)* @ea_split_ea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_ea_header* @ea_split_ea(%struct.gfs2_ea_header* %0) #0 {
  %2 = alloca %struct.gfs2_ea_header*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_ea_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gfs2_ea_header* %0, %struct.gfs2_ea_header** %2, align 8
  %7 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %2, align 8
  %8 = call i32 @GFS2_EA_SIZE(%struct.gfs2_ea_header* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %2, align 8
  %10 = bitcast %struct.gfs2_ea_header* %9 to i8*
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = bitcast i8* %13 to %struct.gfs2_ea_header*
  store %struct.gfs2_ea_header* %14, %struct.gfs2_ea_header** %4, align 8
  %15 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %2, align 8
  %16 = call i32 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %15)
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %2, align 8
  %20 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFS2_EAFLAG_LAST, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %2, align 8
  %27 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %2, align 8
  %30 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %4, align 8
  %36 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %4, align 8
  %39 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %4, align 8
  ret %struct.gfs2_ea_header* %40
}

declare dso_local i32 @GFS2_EA_SIZE(%struct.gfs2_ea_header*) #1

declare dso_local i32 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
