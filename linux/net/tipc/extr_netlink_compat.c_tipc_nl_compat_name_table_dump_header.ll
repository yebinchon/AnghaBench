; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_name_table_dump_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_name_table_dump_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_compat_msg = type { i32, i32 }
%struct.tipc_name_table_query = type { i32 }

@tipc_nl_compat_name_table_dump_header.header = internal constant [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [12 x i8] c"Type       \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Lower      Upper      \00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Port Identity              \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Publication Scope\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_compat_msg*)* @tipc_nl_compat_name_table_dump_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_nl_compat_name_table_dump_header(%struct.tipc_nl_compat_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tipc_nl_compat_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_name_table_query*, align 8
  store %struct.tipc_nl_compat_msg* %0, %struct.tipc_nl_compat_msg** %3, align 8
  %7 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %3, align 8
  %8 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @TLV_DATA(i32 %9)
  %11 = inttoptr i64 %10 to %struct.tipc_name_table_query*
  store %struct.tipc_name_table_query* %11, %struct.tipc_name_table_query** %6, align 8
  %12 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %3, align 8
  %13 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @TLV_GET_DATA_LEN(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load %struct.tipc_name_table_query*, %struct.tipc_name_table_query** %6, align 8
  %23 = getelementptr inbounds %struct.tipc_name_table_query, %struct.tipc_name_table_query* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohl(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 4, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %21
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %3, align 8
  %36 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* @tipc_nl_compat_name_table_dump_header.header, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @tipc_tlv_sprintf(i32 %37, i8* %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %3, align 8
  %48 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @tipc_tlv_sprintf(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @TLV_DATA(i32) #1

declare dso_local i32 @TLV_GET_DATA_LEN(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @tipc_tlv_sprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
