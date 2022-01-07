; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_query_regdb.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_query_regdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwdb_header = type { %struct.fwdb_country* }
%struct.fwdb_country = type { i32, i64 }

@regdb = common dso_local global %struct.fwdb_header* null, align 8
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @query_regdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_regdb(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fwdb_header*, align 8
  %5 = alloca %struct.fwdb_country*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load %struct.fwdb_header*, %struct.fwdb_header** @regdb, align 8
  store %struct.fwdb_header* %6, %struct.fwdb_header** %4, align 8
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load %struct.fwdb_header*, %struct.fwdb_header** @regdb, align 8
  %9 = call i64 @IS_ERR(%struct.fwdb_header* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.fwdb_header*, %struct.fwdb_header** @regdb, align 8
  %13 = call i32 @PTR_ERR(%struct.fwdb_header* %12)
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.fwdb_header*, %struct.fwdb_header** %4, align 8
  %16 = getelementptr inbounds %struct.fwdb_header, %struct.fwdb_header* %15, i32 0, i32 0
  %17 = load %struct.fwdb_country*, %struct.fwdb_country** %16, align 8
  %18 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %17, i64 0
  store %struct.fwdb_country* %18, %struct.fwdb_country** %5, align 8
  br label %19

19:                                               ; preds = %35, %14
  %20 = load %struct.fwdb_country*, %struct.fwdb_country** %5, align 8
  %21 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.fwdb_country*, %struct.fwdb_country** %5, align 8
  %27 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @alpha2_equal(i8* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.fwdb_header*, %struct.fwdb_header** @regdb, align 8
  %33 = load %struct.fwdb_country*, %struct.fwdb_country** %5, align 8
  %34 = call i32 @regdb_query_country(%struct.fwdb_header* %32, %struct.fwdb_country* %33)
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %24
  %36 = load %struct.fwdb_country*, %struct.fwdb_country** %5, align 8
  %37 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %36, i32 1
  store %struct.fwdb_country* %37, %struct.fwdb_country** %5, align 8
  br label %19

38:                                               ; preds = %19
  %39 = load i32, i32* @ENODATA, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %31, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @IS_ERR(%struct.fwdb_header*) #1

declare dso_local i32 @PTR_ERR(%struct.fwdb_header*) #1

declare dso_local i64 @alpha2_equal(i8*, i32) #1

declare dso_local i32 @regdb_query_country(%struct.fwdb_header*, %struct.fwdb_country*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
