; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_index.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.TYPE_17__*, i8**, i8*, %struct.TYPE_16__, i8*, %struct.TYPE_15__, i8*, %struct.TYPE_14__, i8*, %struct.TYPE_13__, %struct.TYPE_18__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"SELinux:  %d users, %d roles, %d types, %d bools, %d sens, %d cats\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"SELinux:  %d users, %d roles, %d types, %d bools\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"SELinux:  %d classes, %d rules\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYM_NUM = common dso_local global i32 0, align 4
@index_f = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*)* @policydb_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policydb_index(%struct.policydb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.policydb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %3, align 8
  %6 = load %struct.policydb*, %struct.policydb** %3, align 8
  %7 = getelementptr inbounds %struct.policydb, %struct.policydb* %6, i32 0, i32 14
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.policydb*, %struct.policydb** %3, align 8
  %12 = getelementptr inbounds %struct.policydb, %struct.policydb* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.policydb*, %struct.policydb** %3, align 8
  %16 = getelementptr inbounds %struct.policydb, %struct.policydb* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.policydb*, %struct.policydb** %3, align 8
  %20 = getelementptr inbounds %struct.policydb, %struct.policydb* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.policydb*, %struct.policydb** %3, align 8
  %24 = getelementptr inbounds %struct.policydb, %struct.policydb* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.policydb*, %struct.policydb** %3, align 8
  %28 = getelementptr inbounds %struct.policydb, %struct.policydb* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.policydb*, %struct.policydb** %3, align 8
  %32 = getelementptr inbounds %struct.policydb, %struct.policydb* %31, i32 0, i32 12
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %26, i32 %30, i32 %34)
  br label %54

36:                                               ; preds = %1
  %37 = load %struct.policydb*, %struct.policydb** %3, align 8
  %38 = getelementptr inbounds %struct.policydb, %struct.policydb* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.policydb*, %struct.policydb** %3, align 8
  %42 = getelementptr inbounds %struct.policydb, %struct.policydb* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.policydb*, %struct.policydb** %3, align 8
  %46 = getelementptr inbounds %struct.policydb, %struct.policydb* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.policydb*, %struct.policydb** %3, align 8
  %50 = getelementptr inbounds %struct.policydb, %struct.policydb* %49, i32 0, i32 11
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %44, i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %36, %10
  %55 = load %struct.policydb*, %struct.policydb** %3, align 8
  %56 = getelementptr inbounds %struct.policydb, %struct.policydb* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.policydb*, %struct.policydb** %3, align 8
  %60 = getelementptr inbounds %struct.policydb, %struct.policydb* %59, i32 0, i32 10
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %62)
  %64 = load %struct.policydb*, %struct.policydb** %3, align 8
  %65 = getelementptr inbounds %struct.policydb, %struct.policydb* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kcalloc(i32 %67, i32 1, i32 %68)
  %70 = load %struct.policydb*, %struct.policydb** %3, align 8
  %71 = getelementptr inbounds %struct.policydb, %struct.policydb* %70, i32 0, i32 8
  store i8* %69, i8** %71, align 8
  %72 = load %struct.policydb*, %struct.policydb** %3, align 8
  %73 = getelementptr inbounds %struct.policydb, %struct.policydb* %72, i32 0, i32 8
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %54
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %192

79:                                               ; preds = %54
  %80 = load %struct.policydb*, %struct.policydb** %3, align 8
  %81 = getelementptr inbounds %struct.policydb, %struct.policydb* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @kcalloc(i32 %83, i32 1, i32 %84)
  %86 = load %struct.policydb*, %struct.policydb** %3, align 8
  %87 = getelementptr inbounds %struct.policydb, %struct.policydb* %86, i32 0, i32 6
  store i8* %85, i8** %87, align 8
  %88 = load %struct.policydb*, %struct.policydb** %3, align 8
  %89 = getelementptr inbounds %struct.policydb, %struct.policydb* %88, i32 0, i32 6
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %79
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %192

95:                                               ; preds = %79
  %96 = load %struct.policydb*, %struct.policydb** %3, align 8
  %97 = getelementptr inbounds %struct.policydb, %struct.policydb* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @kcalloc(i32 %99, i32 1, i32 %100)
  %102 = load %struct.policydb*, %struct.policydb** %3, align 8
  %103 = getelementptr inbounds %struct.policydb, %struct.policydb* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.policydb*, %struct.policydb** %3, align 8
  %105 = getelementptr inbounds %struct.policydb, %struct.policydb* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %95
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %192

111:                                              ; preds = %95
  %112 = load %struct.policydb*, %struct.policydb** %3, align 8
  %113 = getelementptr inbounds %struct.policydb, %struct.policydb* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i8* @kvcalloc(i32 %115, i32 1, i32 %116)
  %118 = load %struct.policydb*, %struct.policydb** %3, align 8
  %119 = getelementptr inbounds %struct.policydb, %struct.policydb* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.policydb*, %struct.policydb** %3, align 8
  %121 = getelementptr inbounds %struct.policydb, %struct.policydb* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %111
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %192

127:                                              ; preds = %111
  %128 = load %struct.policydb*, %struct.policydb** %3, align 8
  %129 = call i32 @cond_init_bool_indexes(%struct.policydb* %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %190

133:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %186, %133
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @SYM_NUM, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %189

138:                                              ; preds = %134
  %139 = load %struct.policydb*, %struct.policydb** %3, align 8
  %140 = getelementptr inbounds %struct.policydb, %struct.policydb* %139, i32 0, i32 0
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i8* @kvcalloc(i32 %146, i32 8, i32 %147)
  %149 = load %struct.policydb*, %struct.policydb** %3, align 8
  %150 = getelementptr inbounds %struct.policydb, %struct.policydb* %149, i32 0, i32 1
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  store i8* %148, i8** %154, align 8
  %155 = load %struct.policydb*, %struct.policydb** %3, align 8
  %156 = getelementptr inbounds %struct.policydb, %struct.policydb* %155, i32 0, i32 1
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %138
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  br label %192

166:                                              ; preds = %138
  %167 = load %struct.policydb*, %struct.policydb** %3, align 8
  %168 = getelementptr inbounds %struct.policydb, %struct.policydb* %167, i32 0, i32 0
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** @index_f, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.policydb*, %struct.policydb** %3, align 8
  %181 = call i32 @hashtab_map(i32 %174, i32 %179, %struct.policydb* %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %166
  br label %190

185:                                              ; preds = %166
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %4, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %4, align 4
  br label %134

189:                                              ; preds = %134
  store i32 0, i32* %5, align 4
  br label %190

190:                                              ; preds = %189, %184, %132
  %191 = load i32, i32* %5, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %190, %163, %124, %108, %92, %76
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @cond_init_bool_indexes(%struct.policydb*) #1

declare dso_local i32 @hashtab_map(i32, i32, %struct.policydb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
