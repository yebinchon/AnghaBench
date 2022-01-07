; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_do_lookup_dh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_do_lookup_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_dent_node = type { i32 }
%struct.ubifs_znode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, i32)* @do_lookup_dh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lookup_dh(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.ubifs_dent_node* %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca %struct.ubifs_dent_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca %union.ubifs_key, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store %struct.ubifs_dent_node* %2, %struct.ubifs_dent_node** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %16 = call i32 @is_hash_key(%struct.ubifs_info* %14, %union.ubifs_key* %15)
  %17 = call i32 @ubifs_assert(%struct.ubifs_info* %13, i32 %16)
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %20 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %21 = call i32 @key_inum(%struct.ubifs_info* %19, %union.ubifs_key* %20)
  %22 = call i32 @lowest_dent_key(%struct.ubifs_info* %18, %union.ubifs_key* %12, i32 %21)
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %27 = call i32 @ubifs_lookup_level0(%struct.ubifs_info* %26, %union.ubifs_key* %12, %struct.ubifs_znode** %11, i32* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %41

34:                                               ; preds = %4
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %36 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %37 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @search_dh_cookie(%struct.ubifs_info* %35, %union.ubifs_key* %36, %struct.ubifs_dent_node* %37, i32 %38, %struct.ubifs_znode** %11, i32* %9, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %34, %33
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @lowest_dent_key(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @key_inum(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @search_dh_cookie(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, i32, %struct.ubifs_znode**, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
