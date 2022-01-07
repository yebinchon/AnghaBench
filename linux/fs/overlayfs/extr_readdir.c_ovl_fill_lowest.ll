; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_fill_lowest.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_fill_lowest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_readdir_data = type { i32, i32, i32 }
%struct.ovl_cache_entry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovl_readdir_data*, i8*, i32, i32, i32, i32)* @ovl_fill_lowest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_fill_lowest(%struct.ovl_readdir_data* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ovl_readdir_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ovl_cache_entry*, align 8
  store %struct.ovl_readdir_data* %0, %struct.ovl_readdir_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %7, align 8
  %15 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.ovl_cache_entry* @ovl_cache_entry_find(i32 %16, i8* %17, i32 %18)
  store %struct.ovl_cache_entry* %19, %struct.ovl_cache_entry** %13, align 8
  %20 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %13, align 8
  %21 = icmp ne %struct.ovl_cache_entry* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %13, align 8
  %24 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %23, i32 0, i32 0
  %25 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %7, align 8
  %26 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %25, i32 0, i32 1
  %27 = call i32 @list_move_tail(i32* %24, i32* %26)
  br label %49

28:                                               ; preds = %6
  %29 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call %struct.ovl_cache_entry* @ovl_cache_entry_new(%struct.ovl_readdir_data* %29, i8* %30, i32 %31, i32 %32, i32 %33)
  store %struct.ovl_cache_entry* %34, %struct.ovl_cache_entry** %13, align 8
  %35 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %13, align 8
  %36 = icmp eq %struct.ovl_cache_entry* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %7, align 8
  %41 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %48

42:                                               ; preds = %28
  %43 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %13, align 8
  %44 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %43, i32 0, i32 0
  %45 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %7, align 8
  %46 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %45, i32 0, i32 1
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  br label %48

48:                                               ; preds = %42, %37
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %7, align 8
  %51 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  ret i32 %52
}

declare dso_local %struct.ovl_cache_entry* @ovl_cache_entry_find(i32, i8*, i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local %struct.ovl_cache_entry* @ovl_cache_entry_new(%struct.ovl_readdir_data*, i8*, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
