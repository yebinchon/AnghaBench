; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3client.c_nfs3_clone_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3client.c_nfs3_clone_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.nfs_server* }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_server* @nfs3_clone_server(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %11 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %12 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.nfs_server* @nfs_clone_server(%struct.nfs_server* %10, %struct.nfs_fh* %11, %struct.nfs_fattr* %12, i32 %13)
  store %struct.nfs_server* %14, %struct.nfs_server** %9, align 8
  %15 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %16 = call i32 @IS_ERR(%struct.nfs_server* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %4
  %19 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %19, i32 0, i32 0
  %21 = load %struct.nfs_server*, %struct.nfs_server** %20, align 8
  %22 = call i32 @IS_ERR(%struct.nfs_server* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %26 = call i32 @nfs_init_server_aclclient(%struct.nfs_server* %25)
  br label %27

27:                                               ; preds = %24, %18, %4
  %28 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  ret %struct.nfs_server* %28
}

declare dso_local %struct.nfs_server* @nfs_clone_server(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*, i32) #1

declare dso_local i32 @IS_ERR(%struct.nfs_server*) #1

declare dso_local i32 @nfs_init_server_aclclient(%struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
