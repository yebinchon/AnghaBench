; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_create_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_create_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_mount_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nfs_subversion = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_server* @nfs4_create_server(%struct.nfs_mount_info* %0, %struct.nfs_subversion* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs_mount_info*, align 8
  %5 = alloca %struct.nfs_subversion*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfs_mount_info* %0, %struct.nfs_mount_info** %4, align 8
  store %struct.nfs_subversion* %1, %struct.nfs_subversion** %5, align 8
  %9 = call %struct.nfs_server* (...) @nfs_alloc_server()
  store %struct.nfs_server* %9, %struct.nfs_server** %6, align 8
  %10 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %11 = icmp ne %struct.nfs_server* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.nfs_server* @ERR_PTR(i32 %14)
  store %struct.nfs_server* %15, %struct.nfs_server** %3, align 8
  br label %54

16:                                               ; preds = %2
  %17 = call i32 (...) @current_cred()
  %18 = call i32 @get_cred(i32 %17)
  %19 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %4, align 8
  %22 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 1
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %30 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @nfs4_init_server(%struct.nfs_server* %29, %struct.TYPE_4__* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  br label %49

37:                                               ; preds = %16
  %38 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %39 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @nfs4_server_common_setup(%struct.nfs_server* %38, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %49

47:                                               ; preds = %37
  %48 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  store %struct.nfs_server* %48, %struct.nfs_server** %3, align 8
  br label %54

49:                                               ; preds = %46, %36
  %50 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %51 = call i32 @nfs_free_server(%struct.nfs_server* %50)
  %52 = load i32, i32* %8, align 4
  %53 = call %struct.nfs_server* @ERR_PTR(i32 %52)
  store %struct.nfs_server* %53, %struct.nfs_server** %3, align 8
  br label %54

54:                                               ; preds = %49, %47, %12
  %55 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  ret %struct.nfs_server* %55
}

declare dso_local %struct.nfs_server* @nfs_alloc_server(...) #1

declare dso_local %struct.nfs_server* @ERR_PTR(i32) #1

declare dso_local i32 @get_cred(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @nfs4_init_server(%struct.nfs_server*, %struct.TYPE_4__*) #1

declare dso_local i32 @nfs4_server_common_setup(%struct.nfs_server*, i32, i32) #1

declare dso_local i32 @nfs_free_server(%struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
