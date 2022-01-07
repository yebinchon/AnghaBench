; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_range_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_range_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64, i32, i8* }
%struct.range_trans = type { i8*, i8*, i8* }
%struct.mls_range = type { i8*, i8*, i8* }

@POLICYDB_VERSION_MLS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@POLICYDB_VERSION_RANGETRANS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SELinux:  rangetrans:  invalid range\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"rangetr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, i8*)* @range_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range_read(%struct.policydb* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.range_trans*, align 8
  %7 = alloca %struct.mls_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.range_trans* null, %struct.range_trans** %6, align 8
  store %struct.mls_range* null, %struct.mls_range** %7, align 8
  %12 = load %struct.policydb*, %struct.policydb** %4, align 8
  %13 = getelementptr inbounds %struct.policydb, %struct.policydb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @POLICYDB_VERSION_MLS, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %163

18:                                               ; preds = %2
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @next_entry(i32* %19, i8* %20, i32 4)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %163

26:                                               ; preds = %18
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le32_to_cpu(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %148, %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %151

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.range_trans* @kzalloc(i32 24, i32 %38)
  store %struct.range_trans* %39, %struct.range_trans** %6, align 8
  %40 = load %struct.range_trans*, %struct.range_trans** %6, align 8
  %41 = icmp ne %struct.range_trans* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %156

43:                                               ; preds = %35
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @next_entry(i32* %44, i8* %45, i32 8)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %156

50:                                               ; preds = %43
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le32_to_cpu(i32 %52)
  %54 = load %struct.range_trans*, %struct.range_trans** %6, align 8
  %55 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le32_to_cpu(i32 %57)
  %59 = load %struct.range_trans*, %struct.range_trans** %6, align 8
  %60 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.policydb*, %struct.policydb** %4, align 8
  %62 = getelementptr inbounds %struct.policydb, %struct.policydb* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @POLICYDB_VERSION_RANGETRANS, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %50
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @next_entry(i32* %67, i8* %68, i32 4)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %156

73:                                               ; preds = %66
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le32_to_cpu(i32 %75)
  %77 = load %struct.range_trans*, %struct.range_trans** %6, align 8
  %78 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %85

79:                                               ; preds = %50
  %80 = load %struct.policydb*, %struct.policydb** %4, align 8
  %81 = getelementptr inbounds %struct.policydb, %struct.policydb* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.range_trans*, %struct.range_trans** %6, align 8
  %84 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %79, %73
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %9, align 4
  %88 = load %struct.policydb*, %struct.policydb** %4, align 8
  %89 = load %struct.range_trans*, %struct.range_trans** %6, align 8
  %90 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @policydb_type_isvalid(%struct.policydb* %88, i8* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %85
  %95 = load %struct.policydb*, %struct.policydb** %4, align 8
  %96 = load %struct.range_trans*, %struct.range_trans** %6, align 8
  %97 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @policydb_type_isvalid(%struct.policydb* %95, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load %struct.policydb*, %struct.policydb** %4, align 8
  %103 = load %struct.range_trans*, %struct.range_trans** %6, align 8
  %104 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @policydb_class_isvalid(%struct.policydb* %102, i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101, %94, %85
  br label %156

109:                                              ; preds = %101
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.range_trans* @kzalloc(i32 24, i32 %112)
  %114 = bitcast %struct.range_trans* %113 to %struct.mls_range*
  store %struct.mls_range* %114, %struct.mls_range** %7, align 8
  %115 = load %struct.mls_range*, %struct.mls_range** %7, align 8
  %116 = icmp ne %struct.mls_range* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  br label %156

118:                                              ; preds = %109
  %119 = load %struct.mls_range*, %struct.mls_range** %7, align 8
  %120 = bitcast %struct.mls_range* %119 to %struct.range_trans*
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @mls_read_range_helper(%struct.range_trans* %120, i8* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %156

126:                                              ; preds = %118
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %9, align 4
  %129 = load %struct.policydb*, %struct.policydb** %4, align 8
  %130 = load %struct.mls_range*, %struct.mls_range** %7, align 8
  %131 = bitcast %struct.mls_range* %130 to %struct.range_trans*
  %132 = call i32 @mls_range_isvalid(%struct.policydb* %129, %struct.range_trans* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %126
  %135 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %156

136:                                              ; preds = %126
  %137 = load %struct.policydb*, %struct.policydb** %4, align 8
  %138 = getelementptr inbounds %struct.policydb, %struct.policydb* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.range_trans*, %struct.range_trans** %6, align 8
  %141 = load %struct.mls_range*, %struct.mls_range** %7, align 8
  %142 = bitcast %struct.mls_range* %141 to %struct.range_trans*
  %143 = call i32 @hashtab_insert(i32 %139, %struct.range_trans* %140, %struct.range_trans* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %156

147:                                              ; preds = %136
  store %struct.range_trans* null, %struct.range_trans** %6, align 8
  store %struct.mls_range* null, %struct.mls_range** %7, align 8
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %31

151:                                              ; preds = %31
  %152 = load %struct.policydb*, %struct.policydb** %4, align 8
  %153 = getelementptr inbounds %struct.policydb, %struct.policydb* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @hash_eval(i32 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %151, %146, %134, %125, %117, %108, %72, %49, %42
  %157 = load %struct.range_trans*, %struct.range_trans** %6, align 8
  %158 = call i32 @kfree(%struct.range_trans* %157)
  %159 = load %struct.mls_range*, %struct.mls_range** %7, align 8
  %160 = bitcast %struct.mls_range* %159 to %struct.range_trans*
  %161 = call i32 @kfree(%struct.range_trans* %160)
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %156, %24, %17
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.range_trans* @kzalloc(i32, i32) #1

declare dso_local i32 @policydb_type_isvalid(%struct.policydb*, i8*) #1

declare dso_local i32 @policydb_class_isvalid(%struct.policydb*, i8*) #1

declare dso_local i32 @mls_read_range_helper(%struct.range_trans*, i8*) #1

declare dso_local i32 @mls_range_isvalid(%struct.policydb*, %struct.range_trans*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @hashtab_insert(i32, %struct.range_trans*, %struct.range_trans*) #1

declare dso_local i32 @hash_eval(i32, i8*) #1

declare dso_local i32 @kfree(%struct.range_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
