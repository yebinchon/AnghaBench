; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_get_l2cap_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_get_l2cap_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.l2cap_conn = type { i32 }
%struct.hci_conn = type { i32, i32, i64 }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"%hhx:%hhx:%hhx:%hhx:%hhx:%hhx %hhu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@BDADDR_LE_PUBLIC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"conn %p dst %pMR type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*, i32*, %struct.l2cap_conn**)* @get_l2cap_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_l2cap_conn(i8* %0, %struct.TYPE_5__* %1, i32* %2, %struct.l2cap_conn** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.l2cap_conn**, align 8
  %10 = alloca %struct.hci_conn*, align 8
  %11 = alloca %struct.hci_dev*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.l2cap_conn** %3, %struct.l2cap_conn*** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %17, i32* %21, i32* %25, i32* %29, i32* %33, i32* %37, i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 7
  br i1 %41, label %42, label %45

42:                                               ; preds = %4
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %84

45:                                               ; preds = %4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = load i32, i32* @BDADDR_ANY, align 4
  %48 = load i32, i32* @BDADDR_LE_PUBLIC, align 4
  %49 = call %struct.hci_dev* @hci_get_route(%struct.TYPE_5__* %46, i32 %47, i32 %48)
  store %struct.hci_dev* %49, %struct.hci_dev** %11, align 8
  %50 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %51 = icmp ne %struct.hci_dev* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %84

55:                                               ; preds = %45
  %56 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %57 = call i32 @hci_dev_lock(%struct.hci_dev* %56)
  %58 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev* %58, %struct.TYPE_5__* %59, i32 %61)
  store %struct.hci_conn* %62, %struct.hci_conn** %10, align 8
  %63 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %64 = call i32 @hci_dev_unlock(%struct.hci_dev* %63)
  %65 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %66 = icmp ne %struct.hci_conn* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* @ENOENT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %84

70:                                               ; preds = %55
  %71 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %72 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.l2cap_conn*
  %75 = load %struct.l2cap_conn**, %struct.l2cap_conn*** %9, align 8
  store %struct.l2cap_conn* %74, %struct.l2cap_conn** %75, align 8
  %76 = load %struct.l2cap_conn**, %struct.l2cap_conn*** %9, align 8
  %77 = load %struct.l2cap_conn*, %struct.l2cap_conn** %76, align 8
  %78 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %79 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %78, i32 0, i32 1
  %80 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %81 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_conn* %77, i32* %79, i32 %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %70, %67, %52, %42
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.hci_dev* @hci_get_route(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
