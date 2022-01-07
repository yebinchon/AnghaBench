; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_atomic_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_atomic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs4_state = type { %struct.inode* }
%struct.nfs4_label = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.inode*, %struct.nfs_open_context*, i32, %struct.iattr*, i32*)* @nfs4_atomic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @nfs4_atomic_open(%struct.inode* %0, %struct.nfs_open_context* %1, i32 %2, %struct.iattr* %3, i32* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs_open_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iattr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nfs4_state*, align 8
  %13 = alloca %struct.nfs4_label, align 8
  %14 = alloca %struct.nfs4_label*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.iattr* %3, %struct.iattr** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = bitcast %struct.nfs4_label* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  store %struct.nfs4_label* null, %struct.nfs4_label** %14, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %18 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iattr*, %struct.iattr** %10, align 8
  %21 = call %struct.nfs4_label* @nfs4_label_init_security(%struct.inode* %16, i32 %19, %struct.iattr* %20, %struct.nfs4_label* %13)
  store %struct.nfs4_label* %21, %struct.nfs4_label** %14, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.iattr*, %struct.iattr** %10, align 8
  %26 = load %struct.nfs4_label*, %struct.nfs4_label** %14, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call %struct.nfs4_state* @nfs4_do_open(%struct.inode* %22, %struct.nfs_open_context* %23, i32 %24, %struct.iattr* %25, %struct.nfs4_label* %26, i32* %27)
  store %struct.nfs4_state* %28, %struct.nfs4_state** %12, align 8
  %29 = load %struct.nfs4_label*, %struct.nfs4_label** %14, align 8
  %30 = call i32 @nfs4_label_release_security(%struct.nfs4_label* %29)
  %31 = load %struct.nfs4_state*, %struct.nfs4_state** %12, align 8
  %32 = call i64 @IS_ERR(%struct.nfs4_state* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load %struct.nfs4_state*, %struct.nfs4_state** %12, align 8
  %36 = call %struct.inode* @ERR_CAST(%struct.nfs4_state* %35)
  store %struct.inode* %36, %struct.inode** %6, align 8
  br label %41

37:                                               ; preds = %5
  %38 = load %struct.nfs4_state*, %struct.nfs4_state** %12, align 8
  %39 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %38, i32 0, i32 0
  %40 = load %struct.inode*, %struct.inode** %39, align 8
  store %struct.inode* %40, %struct.inode** %6, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  ret %struct.inode* %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nfs4_label* @nfs4_label_init_security(%struct.inode*, i32, %struct.iattr*, %struct.nfs4_label*) #2

declare dso_local %struct.nfs4_state* @nfs4_do_open(%struct.inode*, %struct.nfs_open_context*, i32, %struct.iattr*, %struct.nfs4_label*, i32*) #2

declare dso_local i32 @nfs4_label_release_security(%struct.nfs4_label*) #2

declare dso_local i64 @IS_ERR(%struct.nfs4_state*) #2

declare dso_local %struct.inode* @ERR_CAST(%struct.nfs4_state*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
