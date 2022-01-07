; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_check_entry_size_and_hooks.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_check_entry_size_and_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry = type { i32, i32, i32, i32 }
%struct.ebt_table_info = type { i64* }
%struct.ebt_entries = type { i64, i32, i32 }

@NF_BR_NUMHOOKS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBT_DROP = common dso_local global i64 0, align 8
@EBT_ACCEPT = common dso_local global i64 0, align 8
@EBT_RETURN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry*, %struct.ebt_table_info*, i32*, i32*, i32*, i32*)* @ebt_check_entry_size_and_hooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_check_entry_size_and_hooks(%struct.ebt_entry* %0, %struct.ebt_table_info* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ebt_entry*, align 8
  %9 = alloca %struct.ebt_table_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ebt_entry* %0, %struct.ebt_entry** %8, align 8
  store %struct.ebt_table_info* %1, %struct.ebt_table_info** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %33, %6
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %21 = bitcast %struct.ebt_entry* %20 to i8*
  %22 = load %struct.ebt_table_info*, %struct.ebt_table_info** %9, align 8
  %23 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = icmp eq i8* %21, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %36

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  br label %15

36:                                               ; preds = %31, %15
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %42 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %109, label %45

45:                                               ; preds = %40, %36
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %154

54:                                               ; preds = %45
  %55 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %56 = bitcast %struct.ebt_entry* %55 to %struct.ebt_entries*
  %57 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @EBT_DROP, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %54
  %62 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %63 = bitcast %struct.ebt_entry* %62 to %struct.ebt_entries*
  %64 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @EBT_ACCEPT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %74 = bitcast %struct.ebt_entry* %73 to %struct.ebt_entries*
  %75 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EBT_RETURN, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72, %68
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %154

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %61, %54
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %93 = bitcast %struct.ebt_entry* %92 to %struct.ebt_entries*
  %94 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %154

102:                                              ; preds = %91
  %103 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %104 = bitcast %struct.ebt_entry* %103 to %struct.ebt_entries*
  %105 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %10, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %11, align 8
  store i32 0, i32* %108, align 4
  store i32 0, i32* %7, align 4
  br label %154

109:                                              ; preds = %40
  %110 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %111 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ugt i64 16, %113
  br i1 %114, label %131, label %115

115:                                              ; preds = %109
  %116 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %117 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %120 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %118, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %115
  %124 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %125 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %128 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %123, %115, %109
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %7, align 4
  br label %154

134:                                              ; preds = %123
  %135 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %136 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %139 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %137, %140
  %142 = sext i32 %141 to i64
  %143 = icmp ult i64 %142, 4
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  br label %154

147:                                              ; preds = %134
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load i32*, i32** %12, align 8
  %152 = load i32, i32* %151, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %151, align 4
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %147, %144, %131, %102, %99, %79, %51
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
