; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_free_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_free_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, i32, i32, i32, i32, i32, i32 (%struct.nfs_server*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_free_server(%struct.nfs_server* %0) #0 {
  %2 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %2, align 8
  %3 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %4 = call i32 @nfs_server_remove_lists(%struct.nfs_server* %3)
  %5 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %5, i32 0, i32 7
  %7 = load i32 (%struct.nfs_server*)*, i32 (%struct.nfs_server*)** %6, align 8
  %8 = icmp ne i32 (%struct.nfs_server*)* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %10, i32 0, i32 7
  %12 = load i32 (%struct.nfs_server*)*, i32 (%struct.nfs_server*)** %11, align 8
  %13 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %14 = call i32 %12(%struct.nfs_server* %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %17 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IS_ERR(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %23 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @rpc_shutdown_client(i32 %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %28 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IS_ERR(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %34 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rpc_shutdown_client(i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %39 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @nfs_put_client(i32 %40)
  %42 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %43 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %42, i32 0, i32 3
  %44 = call i32 @ida_destroy(i32* %43)
  %45 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %46 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %45, i32 0, i32 2
  %47 = call i32 @ida_destroy(i32* %46)
  %48 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %49 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nfs_free_iostats(i32 %50)
  %52 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %53 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @put_cred(i32 %54)
  %56 = load %struct.nfs_server*, %struct.nfs_server** %2, align 8
  %57 = call i32 @kfree(%struct.nfs_server* %56)
  %58 = call i32 (...) @nfs_release_automount_timer()
  ret void
}

declare dso_local i32 @nfs_server_remove_lists(%struct.nfs_server*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @rpc_shutdown_client(i32) #1

declare dso_local i32 @nfs_put_client(i32) #1

declare dso_local i32 @ida_destroy(i32*) #1

declare dso_local i32 @nfs_free_iostats(i32) #1

declare dso_local i32 @put_cred(i32) #1

declare dso_local i32 @kfree(%struct.nfs_server*) #1

declare dso_local i32 @nfs_release_automount_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
