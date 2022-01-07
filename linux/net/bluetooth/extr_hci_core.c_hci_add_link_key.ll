; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_add_link_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_add_link_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_key = type { i32, i32, i32, i32, i32 }
%struct.hci_dev = type { i32, i32 }
%struct.hci_conn = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s key for %pMR type %u\00", align 1
@HCI_LK_CHANGED_COMBINATION = common dso_local global i32 0, align 4
@HCI_LK_COMBINATION = common dso_local global i32 0, align 4
@HCI_LINK_KEY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.link_key* @hci_add_link_key(%struct.hci_dev* %0, %struct.hci_conn* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.link_key*, align 8
  %9 = alloca %struct.hci_dev*, align 8
  %10 = alloca %struct.hci_conn*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.link_key*, align 8
  %17 = alloca %struct.link_key*, align 8
  %18 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %9, align 8
  store %struct.hci_conn* %1, %struct.hci_conn** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call %struct.link_key* @hci_find_link_key(%struct.hci_dev* %19, i32* %20)
  store %struct.link_key* %21, %struct.link_key** %17, align 8
  %22 = load %struct.link_key*, %struct.link_key** %17, align 8
  %23 = icmp ne %struct.link_key* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = load %struct.link_key*, %struct.link_key** %17, align 8
  %26 = getelementptr inbounds %struct.link_key, %struct.link_key* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %18, align 4
  %28 = load %struct.link_key*, %struct.link_key** %17, align 8
  store %struct.link_key* %28, %struct.link_key** %16, align 8
  br label %50

29:                                               ; preds = %7
  %30 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %31 = icmp ne %struct.hci_conn* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 255, %36 ]
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.link_key* @kzalloc(i32 20, i32 %39)
  store %struct.link_key* %40, %struct.link_key** %16, align 8
  %41 = load %struct.link_key*, %struct.link_key** %16, align 8
  %42 = icmp ne %struct.link_key* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store %struct.link_key* null, %struct.link_key** %8, align 8
  br label %117

44:                                               ; preds = %37
  %45 = load %struct.link_key*, %struct.link_key** %16, align 8
  %46 = getelementptr inbounds %struct.link_key, %struct.link_key* %45, i32 0, i32 4
  %47 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 1
  %49 = call i32 @list_add_rcu(i32* %46, i32* %48)
  br label %50

50:                                               ; preds = %44, %24
  %51 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %53, i32* %54, i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @HCI_LK_CHANGED_COMBINATION, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %50
  %61 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %62 = icmp ne %struct.hci_conn* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %65 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 255
  br i1 %67, label %68, label %80

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %18, align 4
  %70 = icmp eq i32 %69, 255
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* @HCI_LK_COMBINATION, align 4
  store i32 %72, i32* %13, align 4
  %73 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %74 = icmp ne %struct.hci_conn* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %78 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %68, %63, %50
  %81 = load %struct.link_key*, %struct.link_key** %16, align 8
  %82 = getelementptr inbounds %struct.link_key, %struct.link_key* %81, i32 0, i32 3
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @bacpy(i32* %82, i32* %83)
  %85 = load %struct.link_key*, %struct.link_key** %16, align 8
  %86 = getelementptr inbounds %struct.link_key, %struct.link_key* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* @HCI_LINK_KEY_SIZE, align 4
  %90 = call i32 @memcpy(i32 %87, i32* %88, i32 %89)
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.link_key*, %struct.link_key** %16, align 8
  %93 = getelementptr inbounds %struct.link_key, %struct.link_key* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @HCI_LK_CHANGED_COMBINATION, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %80
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.link_key*, %struct.link_key** %16, align 8
  %100 = getelementptr inbounds %struct.link_key, %struct.link_key* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %105

101:                                              ; preds = %80
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.link_key*, %struct.link_key** %16, align 8
  %104 = getelementptr inbounds %struct.link_key, %struct.link_key* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i32*, i32** %15, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %110 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %18, align 4
  %113 = call i32 @hci_persistent_key(%struct.hci_dev* %109, %struct.hci_conn* %110, i32 %111, i32 %112)
  %114 = load i32*, i32** %15, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %108, %105
  %116 = load %struct.link_key*, %struct.link_key** %16, align 8
  store %struct.link_key* %116, %struct.link_key** %8, align 8
  br label %117

117:                                              ; preds = %115, %43
  %118 = load %struct.link_key*, %struct.link_key** %8, align 8
  ret %struct.link_key* %118
}

declare dso_local %struct.link_key* @hci_find_link_key(%struct.hci_dev*, i32*) #1

declare dso_local %struct.link_key* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32*, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hci_persistent_key(%struct.hci_dev*, %struct.hci_conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
