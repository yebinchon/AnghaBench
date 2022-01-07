; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_verify_table_headers.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_verify_table_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_header = type { i64 }

@EPROTO = common dso_local global i32 0, align 4
@YYTD_ID_DEF = common dso_local global i64 0, align 8
@YYTD_ID_BASE = common dso_local global i64 0, align 8
@YYTD_ID_NXT = common dso_local global i64 0, align 8
@YYTD_ID_CHK = common dso_local global i64 0, align 8
@YYTD_ID_ACCEPT = common dso_local global i64 0, align 8
@YYTD_ID_ACCEPT2 = common dso_local global i64 0, align 8
@YYTD_ID_EC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table_header**, i32)* @verify_table_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_table_headers(%struct.table_header** %0, i32 %1) #0 {
  %3 = alloca %struct.table_header**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.table_header** %0, %struct.table_header*** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @EPROTO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %11 = load i64, i64* @YYTD_ID_DEF, align 8
  %12 = getelementptr inbounds %struct.table_header*, %struct.table_header** %10, i64 %11
  %13 = load %struct.table_header*, %struct.table_header** %12, align 8
  %14 = icmp ne %struct.table_header* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %17 = load i64, i64* @YYTD_ID_BASE, align 8
  %18 = getelementptr inbounds %struct.table_header*, %struct.table_header** %16, i64 %17
  %19 = load %struct.table_header*, %struct.table_header** %18, align 8
  %20 = icmp ne %struct.table_header* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %23 = load i64, i64* @YYTD_ID_NXT, align 8
  %24 = getelementptr inbounds %struct.table_header*, %struct.table_header** %22, i64 %23
  %25 = load %struct.table_header*, %struct.table_header** %24, align 8
  %26 = icmp ne %struct.table_header* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %29 = load i64, i64* @YYTD_ID_CHK, align 8
  %30 = getelementptr inbounds %struct.table_header*, %struct.table_header** %28, i64 %29
  %31 = load %struct.table_header*, %struct.table_header** %30, align 8
  %32 = icmp ne %struct.table_header* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %21, %15, %2
  br label %126

34:                                               ; preds = %27
  %35 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %36 = load i64, i64* @YYTD_ID_BASE, align 8
  %37 = getelementptr inbounds %struct.table_header*, %struct.table_header** %35, i64 %36
  %38 = load %struct.table_header*, %struct.table_header** %37, align 8
  %39 = getelementptr inbounds %struct.table_header, %struct.table_header* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @ACCEPT1_FLAGS(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %34
  %45 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %46 = load i64, i64* @YYTD_ID_ACCEPT, align 8
  %47 = getelementptr inbounds %struct.table_header*, %struct.table_header** %45, i64 %46
  %48 = load %struct.table_header*, %struct.table_header** %47, align 8
  %49 = icmp ne %struct.table_header* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %126

51:                                               ; preds = %44
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %54 = load i64, i64* @YYTD_ID_ACCEPT, align 8
  %55 = getelementptr inbounds %struct.table_header*, %struct.table_header** %53, i64 %54
  %56 = load %struct.table_header*, %struct.table_header** %55, align 8
  %57 = getelementptr inbounds %struct.table_header, %struct.table_header* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %52, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %126

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %34
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @ACCEPT2_FLAGS(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %68 = load i64, i64* @YYTD_ID_ACCEPT2, align 8
  %69 = getelementptr inbounds %struct.table_header*, %struct.table_header** %67, i64 %68
  %70 = load %struct.table_header*, %struct.table_header** %69, align 8
  %71 = icmp ne %struct.table_header* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %126

73:                                               ; preds = %66
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %76 = load i64, i64* @YYTD_ID_ACCEPT2, align 8
  %77 = getelementptr inbounds %struct.table_header*, %struct.table_header** %75, i64 %76
  %78 = load %struct.table_header*, %struct.table_header** %77, align 8
  %79 = getelementptr inbounds %struct.table_header, %struct.table_header* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %74, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %126

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %87 = load i64, i64* @YYTD_ID_DEF, align 8
  %88 = getelementptr inbounds %struct.table_header*, %struct.table_header** %86, i64 %87
  %89 = load %struct.table_header*, %struct.table_header** %88, align 8
  %90 = getelementptr inbounds %struct.table_header, %struct.table_header* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %85, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %126

94:                                               ; preds = %84
  %95 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %96 = load i64, i64* @YYTD_ID_NXT, align 8
  %97 = getelementptr inbounds %struct.table_header*, %struct.table_header** %95, i64 %96
  %98 = load %struct.table_header*, %struct.table_header** %97, align 8
  %99 = getelementptr inbounds %struct.table_header, %struct.table_header* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %103 = load i64, i64* @YYTD_ID_CHK, align 8
  %104 = getelementptr inbounds %struct.table_header*, %struct.table_header** %102, i64 %103
  %105 = load %struct.table_header*, %struct.table_header** %104, align 8
  %106 = getelementptr inbounds %struct.table_header, %struct.table_header* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %101, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %126

110:                                              ; preds = %94
  %111 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %112 = load i64, i64* @YYTD_ID_EC, align 8
  %113 = getelementptr inbounds %struct.table_header*, %struct.table_header** %111, i64 %112
  %114 = load %struct.table_header*, %struct.table_header** %113, align 8
  %115 = icmp ne %struct.table_header* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.table_header**, %struct.table_header*** %3, align 8
  %118 = load i64, i64* @YYTD_ID_EC, align 8
  %119 = getelementptr inbounds %struct.table_header*, %struct.table_header** %117, i64 %118
  %120 = load %struct.table_header*, %struct.table_header** %119, align 8
  %121 = getelementptr inbounds %struct.table_header, %struct.table_header* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 256
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %126

125:                                              ; preds = %116, %110
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %125, %124, %109, %93, %82, %72, %60, %50, %33
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i64 @ACCEPT1_FLAGS(i32) #1

declare dso_local i64 @ACCEPT2_FLAGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
