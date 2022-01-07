; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_mon_alloc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_mon_alloc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { i32 }
%struct.ceph_connection = type { %struct.TYPE_2__, %struct.ceph_mon_client* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ceph_mon_client = type { i32, i32 }
%struct.ceph_msg_header = type { i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"alloc_msg unknown type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"mon_alloc_msg front %d > prealloc %d (%u#%llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_msg* (%struct.ceph_connection*, %struct.ceph_msg_header*, i32*)* @mon_alloc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_msg* @mon_alloc_msg(%struct.ceph_connection* %0, %struct.ceph_msg_header* %1, i32* %2) #0 {
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca %struct.ceph_connection*, align 8
  %6 = alloca %struct.ceph_msg_header*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ceph_mon_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ceph_msg*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %5, align 8
  store %struct.ceph_msg_header* %1, %struct.ceph_msg_header** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %13 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %12, i32 0, i32 1
  %14 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %13, align 8
  store %struct.ceph_mon_client* %14, %struct.ceph_mon_client** %8, align 8
  %15 = load %struct.ceph_msg_header*, %struct.ceph_msg_header** %6, align 8
  %16 = getelementptr inbounds %struct.ceph_msg_header, %struct.ceph_msg_header* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ceph_msg_header*, %struct.ceph_msg_header** %6, align 8
  %20 = getelementptr inbounds %struct.ceph_msg_header, %struct.ceph_msg_header* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %10, align 4
  store %struct.ceph_msg* null, %struct.ceph_msg** %11, align 8
  %23 = load i32*, i32** %7, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %61 [
    i32 130, label %25
    i32 128, label %30
    i32 133, label %30
    i32 136, label %35
    i32 132, label %40
    i32 131, label %52
    i32 134, label %52
    i32 129, label %52
    i32 135, label %52
  ]

25:                                               ; preds = %3
  %26 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %8, align 8
  %27 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ceph_msg* @ceph_msg_get(i32 %28)
  store %struct.ceph_msg* %29, %struct.ceph_msg** %11, align 8
  br label %61

30:                                               ; preds = %3, %3
  %31 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %32 = load %struct.ceph_msg_header*, %struct.ceph_msg_header** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call %struct.ceph_msg* @get_generic_reply(%struct.ceph_connection* %31, %struct.ceph_msg_header* %32, i32* %33)
  store %struct.ceph_msg* %34, %struct.ceph_msg** %4, align 8
  br label %99

35:                                               ; preds = %3
  %36 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %8, align 8
  %37 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.ceph_msg* @ceph_msg_get(i32 %38)
  store %struct.ceph_msg* %39, %struct.ceph_msg** %11, align 8
  br label %61

40:                                               ; preds = %3
  %41 = load %struct.ceph_msg_header*, %struct.ceph_msg_header** %6, align 8
  %42 = getelementptr inbounds %struct.ceph_msg_header, %struct.ceph_msg_header* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le64_to_cpu(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %48 = load %struct.ceph_msg_header*, %struct.ceph_msg_header** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call %struct.ceph_msg* @get_generic_reply(%struct.ceph_connection* %47, %struct.ceph_msg_header* %48, i32* %49)
  store %struct.ceph_msg* %50, %struct.ceph_msg** %4, align 8
  br label %99

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %3, %3, %3, %3, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @GFP_NOFS, align 4
  %56 = call %struct.ceph_msg* @ceph_msg_new(i32 %53, i32 %54, i32 %55, i32 0)
  store %struct.ceph_msg* %56, %struct.ceph_msg** %11, align 8
  %57 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  %58 = icmp ne %struct.ceph_msg* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  store %struct.ceph_msg* null, %struct.ceph_msg** %4, align 8
  br label %99

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %3, %60, %35, %25
  %62 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  %63 = icmp ne %struct.ceph_msg* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %7, align 8
  store i32 1, i32* %67, align 4
  br label %97

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  %71 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  %77 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %80 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %85 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @le64_to_cpu(i32 %87)
  %89 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78, i32 %83, i32 %88)
  %90 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  %91 = call i32 @ceph_msg_put(%struct.ceph_msg* %90)
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @GFP_NOFS, align 4
  %95 = call %struct.ceph_msg* @ceph_msg_new(i32 %92, i32 %93, i32 %94, i32 0)
  store %struct.ceph_msg* %95, %struct.ceph_msg** %11, align 8
  br label %96

96:                                               ; preds = %74, %68
  br label %97

97:                                               ; preds = %96, %64
  %98 = load %struct.ceph_msg*, %struct.ceph_msg** %11, align 8
  store %struct.ceph_msg* %98, %struct.ceph_msg** %4, align 8
  br label %99

99:                                               ; preds = %97, %59, %46, %30
  %100 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  ret %struct.ceph_msg* %100
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.ceph_msg* @ceph_msg_get(i32) #1

declare dso_local %struct.ceph_msg* @get_generic_reply(%struct.ceph_connection*, %struct.ceph_msg_header*, i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.ceph_msg* @ceph_msg_new(i32, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ceph_msg_put(%struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
