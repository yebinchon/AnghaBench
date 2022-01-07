; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_icmp_socket.c_batadv_socket_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_icmp_socket.c_batadv_socket_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_socket_client = type { i32, i32, i32, i32, i64, i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.batadv_socket_client* }

@THIS_MODULE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@batadv_socket_client_hash = common dso_local global %struct.batadv_socket_client** null, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"Error - can't add another packet client: maximum number of clients reached\0A\00", align 1
@EXFULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @batadv_socket_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_socket_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.batadv_socket_client*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @THIS_MODULE, align 4
  %9 = call i32 @try_module_get(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %88

14:                                               ; preds = %2
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call i32 @batadv_debugfs_deprecated(%struct.file* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call i32 @stream_open(%struct.inode* %17, %struct.file* %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.batadv_socket_client* @kmalloc(i32 32, i32 %20)
  store %struct.batadv_socket_client* %21, %struct.batadv_socket_client** %7, align 8
  %22 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %7, align 8
  %23 = icmp ne %struct.batadv_socket_client* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @THIS_MODULE, align 4
  %26 = call i32 @module_put(i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.batadv_socket_client**, %struct.batadv_socket_client*** @batadv_socket_client_hash, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.batadv_socket_client** %32)
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.batadv_socket_client**, %struct.batadv_socket_client*** @batadv_socket_client_hash, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.batadv_socket_client*, %struct.batadv_socket_client** %36, i64 %38
  %40 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %39, align 8
  %41 = icmp ne %struct.batadv_socket_client* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %7, align 8
  %44 = load %struct.batadv_socket_client**, %struct.batadv_socket_client*** @batadv_socket_client_hash, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.batadv_socket_client*, %struct.batadv_socket_client** %44, i64 %46
  store %struct.batadv_socket_client* %43, %struct.batadv_socket_client** %47, align 8
  br label %52

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %30

52:                                               ; preds = %42, %30
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.batadv_socket_client**, %struct.batadv_socket_client*** @batadv_socket_client_hash, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.batadv_socket_client** %54)
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %7, align 8
  %60 = call i32 @kfree(%struct.batadv_socket_client* %59)
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = call i32 @module_put(i32 %61)
  %63 = load i32, i32* @EXFULL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %88

65:                                               ; preds = %52
  %66 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %7, align 8
  %67 = getelementptr inbounds %struct.batadv_socket_client, %struct.batadv_socket_client* %66, i32 0, i32 5
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %7, align 8
  %70 = getelementptr inbounds %struct.batadv_socket_client, %struct.batadv_socket_client* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %7, align 8
  %73 = getelementptr inbounds %struct.batadv_socket_client, %struct.batadv_socket_client* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %7, align 8
  %78 = getelementptr inbounds %struct.batadv_socket_client, %struct.batadv_socket_client* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %7, align 8
  %80 = getelementptr inbounds %struct.batadv_socket_client, %struct.batadv_socket_client* %79, i32 0, i32 2
  %81 = call i32 @spin_lock_init(i32* %80)
  %82 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %7, align 8
  %83 = getelementptr inbounds %struct.batadv_socket_client, %struct.batadv_socket_client* %82, i32 0, i32 1
  %84 = call i32 @init_waitqueue_head(i32* %83)
  %85 = load %struct.batadv_socket_client*, %struct.batadv_socket_client** %7, align 8
  %86 = load %struct.file*, %struct.file** %5, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 0
  store %struct.batadv_socket_client* %85, %struct.batadv_socket_client** %87, align 8
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %65, %57, %24, %11
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @batadv_debugfs_deprecated(%struct.file*, i8*) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.batadv_socket_client* @kmalloc(i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.batadv_socket_client**) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.batadv_socket_client*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
