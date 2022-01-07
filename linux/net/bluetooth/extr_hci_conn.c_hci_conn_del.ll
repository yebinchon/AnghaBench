; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, i64, %struct.hci_conn*, i64, i32, i32, i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s hcon %p handle %d\00", align 1
@ACL_LINK = common dso_local global i64 0, align 8
@LE_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_conn_del(%struct.hci_conn* %0) #0 {
  %2 = alloca %struct.hci_conn*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %2, align 8
  %6 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 10
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %3, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %13 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %14 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11, %struct.hci_conn* %12, i32 %15)
  %17 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 8
  %19 = call i32 @cancel_delayed_work_sync(i32* %18)
  %20 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %21 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %20, i32 0, i32 7
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %24 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %23, i32 0, i32 6
  %25 = call i32 @cancel_delayed_work_sync(i32* %24)
  %26 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %27 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ACL_LINK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %1
  %32 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %33 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %32, i32 0, i32 3
  %34 = load %struct.hci_conn*, %struct.hci_conn** %33, align 8
  store %struct.hci_conn* %34, %struct.hci_conn** %4, align 8
  %35 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %36 = icmp ne %struct.hci_conn* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 3
  store %struct.hci_conn* null, %struct.hci_conn** %39, align 8
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %42 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  br label %98

50:                                               ; preds = %1
  %51 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %52 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LE_LINK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %50
  %57 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %58 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %57, i32 0, i32 5
  %59 = call i32 @cancel_delayed_work(i32* %58)
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %66 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  br label %84

74:                                               ; preds = %56
  %75 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %76 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 8
  br label %84

84:                                               ; preds = %74, %64
  br label %97

85:                                               ; preds = %50
  %86 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %87 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %86, i32 0, i32 3
  %88 = load %struct.hci_conn*, %struct.hci_conn** %87, align 8
  store %struct.hci_conn* %88, %struct.hci_conn** %5, align 8
  %89 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %90 = icmp ne %struct.hci_conn* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %93 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %92, i32 0, i32 3
  store %struct.hci_conn* null, %struct.hci_conn** %93, align 8
  %94 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %95 = call i32 @hci_conn_drop(%struct.hci_conn* %94)
  br label %96

96:                                               ; preds = %91, %85
  br label %97

97:                                               ; preds = %96, %84
  br label %98

98:                                               ; preds = %97, %40
  %99 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %100 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %105 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @amp_mgr_put(i64 %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %110 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %109, i32 0, i32 1
  %111 = call i32 @skb_queue_purge(i32* %110)
  %112 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %113 = call i32 @hci_conn_cleanup(%struct.hci_conn* %112)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, i32, %struct.hci_conn*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @amp_mgr_put(i64) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @hci_conn_cleanup(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
