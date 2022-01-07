; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_cfg_cipsov4_map_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_kapi.c_netlbl_cfg_cipsov4_map_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.netlbl_audit = type { i32 }
%struct.cipso_v4_doi = type { i32 }
%struct.netlbl_dom_map = type { %struct.netlbl_dom_map*, %struct.TYPE_3__, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i8*, %struct.netlbl_domaddr_map*, %struct.cipso_v4_doi* }
%struct.netlbl_domaddr_map = type { %struct.netlbl_domaddr_map*, %struct.TYPE_3__, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.netlbl_domaddr4_map = type { %struct.netlbl_domaddr4_map*, %struct.TYPE_3__, i32, %struct.TYPE_4__, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@NETLBL_NLTYPE_CIPSOV4 = common dso_local global i8* null, align 8
@NETLBL_NLTYPE_ADDRSELECT = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_cfg_cipsov4_map_add(i32 %0, i8* %1, %struct.in_addr* %2, %struct.in_addr* %3, %struct.netlbl_audit* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.in_addr*, align 8
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca %struct.netlbl_audit*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cipso_v4_doi*, align 8
  %14 = alloca %struct.netlbl_dom_map*, align 8
  %15 = alloca %struct.netlbl_domaddr_map*, align 8
  %16 = alloca %struct.netlbl_domaddr4_map*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.in_addr* %2, %struct.in_addr** %9, align 8
  store %struct.in_addr* %3, %struct.in_addr** %10, align 8
  store %struct.netlbl_audit* %4, %struct.netlbl_audit** %11, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  store %struct.netlbl_domaddr_map* null, %struct.netlbl_domaddr_map** %15, align 8
  store %struct.netlbl_domaddr4_map* null, %struct.netlbl_domaddr4_map** %16, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.cipso_v4_doi* @cipso_v4_doi_getdef(i32 %19)
  store %struct.cipso_v4_doi* %20, %struct.cipso_v4_doi** %13, align 8
  %21 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %22 = icmp eq %struct.cipso_v4_doi* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %171

26:                                               ; preds = %5
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.netlbl_domaddr_map* @kzalloc(i32 56, i32 %27)
  %29 = bitcast %struct.netlbl_domaddr_map* %28 to %struct.netlbl_dom_map*
  store %struct.netlbl_dom_map* %29, %struct.netlbl_dom_map** %14, align 8
  %30 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %31 = icmp eq %struct.netlbl_dom_map* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %167

33:                                               ; preds = %26
  %34 = load i32, i32* @AF_INET, align 4
  %35 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %36 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.netlbl_domaddr_map* @kstrdup(i8* %40, i32 %41)
  %43 = bitcast %struct.netlbl_domaddr_map* %42 to %struct.netlbl_dom_map*
  %44 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %45 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %44, i32 0, i32 0
  store %struct.netlbl_dom_map* %43, %struct.netlbl_dom_map** %45, align 8
  %46 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %47 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %46, i32 0, i32 0
  %48 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %47, align 8
  %49 = icmp eq %struct.netlbl_dom_map* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %163

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %54 = icmp eq %struct.in_addr* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %57 = icmp eq %struct.in_addr* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %60 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %61 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store %struct.cipso_v4_doi* %59, %struct.cipso_v4_doi** %62, align 8
  %63 = load i8*, i8** @NETLBL_NLTYPE_CIPSOV4, align 8
  %64 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %65 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  br label %141

67:                                               ; preds = %55, %52
  %68 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %69 = icmp ne %struct.in_addr* %68, null
  br i1 %69, label %70, label %137

70:                                               ; preds = %67
  %71 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %72 = icmp ne %struct.in_addr* %71, null
  br i1 %72, label %73, label %137

73:                                               ; preds = %70
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call %struct.netlbl_domaddr_map* @kzalloc(i32 56, i32 %74)
  store %struct.netlbl_domaddr_map* %75, %struct.netlbl_domaddr_map** %15, align 8
  %76 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %77 = icmp eq %struct.netlbl_domaddr_map* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %157

79:                                               ; preds = %73
  %80 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %81 = getelementptr inbounds %struct.netlbl_domaddr_map, %struct.netlbl_domaddr_map* %80, i32 0, i32 2
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %84 = getelementptr inbounds %struct.netlbl_domaddr_map, %struct.netlbl_domaddr_map* %83, i32 0, i32 4
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load i32, i32* @GFP_ATOMIC, align 4
  %87 = call %struct.netlbl_domaddr_map* @kzalloc(i32 56, i32 %86)
  %88 = bitcast %struct.netlbl_domaddr_map* %87 to %struct.netlbl_domaddr4_map*
  store %struct.netlbl_domaddr4_map* %88, %struct.netlbl_domaddr4_map** %16, align 8
  %89 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %90 = icmp eq %struct.netlbl_domaddr4_map* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %154

92:                                               ; preds = %79
  %93 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %94 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %95 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store %struct.cipso_v4_doi* %93, %struct.cipso_v4_doi** %96, align 8
  %97 = load i8*, i8** @NETLBL_NLTYPE_CIPSOV4, align 8
  %98 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %99 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %102 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %105 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %103, %106
  %108 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %109 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %112 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %115 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %118 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  store i32 1, i32* %119, align 4
  %120 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %121 = getelementptr inbounds %struct.netlbl_domaddr4_map, %struct.netlbl_domaddr4_map* %120, i32 0, i32 3
  %122 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %123 = getelementptr inbounds %struct.netlbl_domaddr_map, %struct.netlbl_domaddr_map* %122, i32 0, i32 2
  %124 = call i32 @netlbl_af4list_add(%struct.TYPE_4__* %121, i32* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %92
  br label %150

128:                                              ; preds = %92
  %129 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %130 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %131 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store %struct.netlbl_domaddr_map* %129, %struct.netlbl_domaddr_map** %132, align 8
  %133 = load i8*, i8** @NETLBL_NLTYPE_ADDRSELECT, align 8
  %134 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %135 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i8* %133, i8** %136, align 8
  br label %140

137:                                              ; preds = %70, %67
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %12, align 4
  br label %157

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %58
  %142 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %143 = bitcast %struct.netlbl_dom_map* %142 to %struct.netlbl_domaddr_map*
  %144 = load %struct.netlbl_audit*, %struct.netlbl_audit** %11, align 8
  %145 = call i32 @netlbl_domhsh_add(%struct.netlbl_domaddr_map* %143, %struct.netlbl_audit* %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %150

149:                                              ; preds = %141
  store i32 0, i32* %6, align 4
  br label %171

150:                                              ; preds = %148, %127
  %151 = load %struct.netlbl_domaddr4_map*, %struct.netlbl_domaddr4_map** %16, align 8
  %152 = bitcast %struct.netlbl_domaddr4_map* %151 to %struct.netlbl_domaddr_map*
  %153 = call i32 @kfree(%struct.netlbl_domaddr_map* %152)
  br label %154

154:                                              ; preds = %150, %91
  %155 = load %struct.netlbl_domaddr_map*, %struct.netlbl_domaddr_map** %15, align 8
  %156 = call i32 @kfree(%struct.netlbl_domaddr_map* %155)
  br label %157

157:                                              ; preds = %154, %137, %78
  %158 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %159 = getelementptr inbounds %struct.netlbl_dom_map, %struct.netlbl_dom_map* %158, i32 0, i32 0
  %160 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %159, align 8
  %161 = bitcast %struct.netlbl_dom_map* %160 to %struct.netlbl_domaddr_map*
  %162 = call i32 @kfree(%struct.netlbl_domaddr_map* %161)
  br label %163

163:                                              ; preds = %157, %50
  %164 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %14, align 8
  %165 = bitcast %struct.netlbl_dom_map* %164 to %struct.netlbl_domaddr_map*
  %166 = call i32 @kfree(%struct.netlbl_domaddr_map* %165)
  br label %167

167:                                              ; preds = %163, %32
  %168 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %169 = call i32 @cipso_v4_doi_putdef(%struct.cipso_v4_doi* %168)
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %167, %149, %23
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local %struct.cipso_v4_doi* @cipso_v4_doi_getdef(i32) #1

declare dso_local %struct.netlbl_domaddr_map* @kzalloc(i32, i32) #1

declare dso_local %struct.netlbl_domaddr_map* @kstrdup(i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @netlbl_af4list_add(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @netlbl_domhsh_add(%struct.netlbl_domaddr_map*, %struct.netlbl_audit*) #1

declare dso_local i32 @kfree(%struct.netlbl_domaddr_map*) #1

declare dso_local i32 @cipso_v4_doi_putdef(%struct.cipso_v4_doi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
