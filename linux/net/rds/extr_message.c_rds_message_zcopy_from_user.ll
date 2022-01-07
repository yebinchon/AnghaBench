; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_message.c_rds_message_zcopy_from_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_message.c_rds_message_zcopy_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_message = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.scatterlist* }
%struct.TYPE_7__ = type { %struct.mmpin }
%struct.mmpin = type { i32 }
%struct.scatterlist = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.rds_msg_zcopy_info = type { %struct.TYPE_7__, i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_message*, %struct.iov_iter*)* @rds_message_zcopy_from_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_message_zcopy_from_user(%struct.rds_message* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_message*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rds_msg_zcopy_info*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mmpin*, align 8
  %15 = alloca i32, align 4
  store %struct.rds_message* %0, %struct.rds_message** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %17 = call i32 @iov_iter_count(%struct.iov_iter* %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %19 = call i32 @iov_iter_count(%struct.iov_iter* %18)
  %20 = call i32 @cpu_to_be32(i32 %19)
  %21 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %22 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %26 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load %struct.scatterlist*, %struct.scatterlist** %27, align 8
  store %struct.scatterlist* %28, %struct.scatterlist** %6, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.rds_msg_zcopy_info* @kzalloc(i32 8, i32 %29)
  store %struct.rds_msg_zcopy_info* %30, %struct.rds_msg_zcopy_info** %10, align 8
  %31 = load %struct.rds_msg_zcopy_info*, %struct.rds_msg_zcopy_info** %10, align 8
  %32 = icmp ne %struct.rds_msg_zcopy_info* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %137

36:                                               ; preds = %2
  %37 = load %struct.rds_msg_zcopy_info*, %struct.rds_msg_zcopy_info** %10, align 8
  %38 = getelementptr inbounds %struct.rds_msg_zcopy_info, %struct.rds_msg_zcopy_info* %37, i32 0, i32 1
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.rds_msg_zcopy_info*, %struct.rds_msg_zcopy_info** %10, align 8
  %41 = getelementptr inbounds %struct.rds_msg_zcopy_info, %struct.rds_msg_zcopy_info* %40, i32 0, i32 0
  %42 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %43 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %44, align 8
  %45 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %46 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @mm_account_pinned_pages(%struct.mmpin* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %130

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %98, %56
  %58 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %59 = call i32 @iov_iter_count(%struct.iov_iter* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %124

61:                                               ; preds = %57
  %62 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = call i64 @iov_iter_get_pages(%struct.iov_iter* %62, %struct.page** %11, i32 %63, i32 1, i64* %12)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %61
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %71 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %77 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load %struct.scatterlist*, %struct.scatterlist** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %79, i64 %81
  %83 = call i32 @sg_page(%struct.scatterlist* %82)
  %84 = call i32 @put_page(i32 %83)
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %68

88:                                               ; preds = %68
  %89 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %90 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store %struct.mmpin* %93, %struct.mmpin** %14, align 8
  %94 = load %struct.mmpin*, %struct.mmpin** %14, align 8
  %95 = call i32 @mm_unaccount_pinned_pages(%struct.mmpin* %94)
  %96 = load i32, i32* @EFAULT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %130

98:                                               ; preds = %61
  %99 = load i64, i64* %13, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %9, align 4
  %104 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i32 @iov_iter_advance(%struct.iov_iter* %104, i64 %105)
  %107 = load i64, i64* %13, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %8, align 4
  %112 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %113 = load %struct.page*, %struct.page** %11, align 8
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @sg_set_page(%struct.scatterlist* %112, %struct.page* %113, i64 %114, i64 %115)
  %117 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %118 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %123 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %122, i32 1
  store %struct.scatterlist* %123, %struct.scatterlist** %6, align 8
  br label %57

124:                                              ; preds = %57
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @WARN_ON_ONCE(i32 %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %137

130:                                              ; preds = %88, %53
  %131 = load %struct.rds_msg_zcopy_info*, %struct.rds_msg_zcopy_info** %10, align 8
  %132 = call i32 @kfree(%struct.rds_msg_zcopy_info* %131)
  %133 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %134 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %135, align 8
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %130, %124, %33
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.rds_msg_zcopy_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @mm_account_pinned_pages(%struct.mmpin*, i32) #1

declare dso_local i64 @iov_iter_get_pages(%struct.iov_iter*, %struct.page**, i32, i32, i64*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @mm_unaccount_pinned_pages(%struct.mmpin*) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i64) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i64, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kfree(%struct.rds_msg_zcopy_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
