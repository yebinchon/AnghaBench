; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_bvecs_advance.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_bvecs_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg_data_cursor = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.bio_vec* }
%struct.bio_vec = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_msg_data_cursor*, i64)* @ceph_msg_data_bvecs_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_msg_data_bvecs_advance(%struct.ceph_msg_data_cursor* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_msg_data_cursor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.ceph_msg_data_cursor* %0, %struct.ceph_msg_data_cursor** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %8, i32 0, i32 3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.bio_vec*, %struct.bio_vec** %12, align 8
  store %struct.bio_vec* %13, %struct.bio_vec** %6, align 8
  %14 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %15 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.page* @bvec_iter_page(%struct.bio_vec* %14, i64 %18)
  store %struct.page* %19, %struct.page** %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %29 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %30 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @bvec_iter_len(%struct.bio_vec* %28, i64 %32)
  %34 = icmp ugt i64 %27, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %43 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %44 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %43, i32 0, i32 2
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @bvec_iter_advance(%struct.bio_vec* %42, %struct.TYPE_8__* %44, i64 %45)
  %47 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %48 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %2
  %52 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %53 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  store i32 0, i32* %3, align 4
  br label %108

59:                                               ; preds = %2
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %64 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.page*, %struct.page** %7, align 8
  %70 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %71 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %72 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.page* @bvec_iter_page(%struct.bio_vec* %70, i64 %74)
  %76 = icmp eq %struct.page* %69, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68, %59
  store i32 0, i32* %3, align 4
  br label %108

78:                                               ; preds = %68, %62
  %79 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %80 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %84 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %87 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %88 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @bvec_iter_len(%struct.bio_vec* %86, i64 %90)
  %92 = icmp ult i64 %85, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %96 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %99 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %100 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @bvec_iter_len(%struct.bio_vec* %98, i64 %102)
  %104 = icmp eq i64 %97, %103
  %105 = zext i1 %104 to i32
  %106 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %4, align 8
  %107 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  store i32 1, i32* %3, align 4
  br label %108

108:                                              ; preds = %78, %77, %51
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.page* @bvec_iter_page(%struct.bio_vec*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @bvec_iter_len(%struct.bio_vec*, i64) #1

declare dso_local i32 @bvec_iter_advance(%struct.bio_vec*, %struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
