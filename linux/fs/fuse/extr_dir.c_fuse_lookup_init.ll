; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_lookup_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_lookup_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_args = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.fuse_entry_out* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.qstr = type { i32, i64 }
%struct.fuse_entry_out = type { i32 }

@FUSE_LOOKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_args*, i32, %struct.qstr*, %struct.fuse_entry_out*)* @fuse_lookup_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_lookup_init(%struct.fuse_conn* %0, %struct.fuse_args* %1, i32 %2, %struct.qstr* %3, %struct.fuse_entry_out* %4) #0 {
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.fuse_entry_out*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %6, align 8
  store %struct.fuse_args* %1, %struct.fuse_args** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qstr* %3, %struct.qstr** %9, align 8
  store %struct.fuse_entry_out* %4, %struct.fuse_entry_out** %10, align 8
  %11 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %10, align 8
  %12 = call i32 @memset(%struct.fuse_entry_out* %11, i32 0, i32 4)
  %13 = load i32, i32* @FUSE_LOOKUP, align 4
  %14 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %15 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %18 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %20 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.qstr*, %struct.qstr** %9, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %26 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64 %24, i64* %29, align 8
  %30 = load %struct.qstr*, %struct.qstr** %9, align 8
  %31 = getelementptr inbounds %struct.qstr, %struct.qstr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %34 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 8
  %38 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %39 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %41 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %10, align 8
  %46 = load %struct.fuse_args*, %struct.fuse_args** %7, align 8
  %47 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store %struct.fuse_entry_out* %45, %struct.fuse_entry_out** %50, align 8
  ret void
}

declare dso_local i32 @memset(%struct.fuse_entry_out*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
