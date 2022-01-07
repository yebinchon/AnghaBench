; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_class_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_class_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hashtab = type { i32 }
%struct.class_datum = type { i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_4__, i32, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PERM_SYMTAB_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SELinux:  unknown common %s\0A\00", align 1
@POLICYDB_VERSION_VALIDATETRANS = common dso_local global i64 0, align 8
@POLICYDB_VERSION_NEW_OBJECT_DEFAULTS = common dso_local global i64 0, align 8
@POLICYDB_VERSION_DEFAULT_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @class_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @class_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.hashtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.class_datum*, align 8
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.hashtab* %1, %struct.hashtab** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.class_datum* @kzalloc(i32 80, i32 %17)
  store %struct.class_datum* %18, %struct.class_datum** %9, align 8
  %19 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %20 = icmp ne %struct.class_datum* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %230

24:                                               ; preds = %3
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @next_entry(i32* %25, i8* %26, i32 24)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %225

31:                                               ; preds = %24
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = call i8* @le32_to_cpu(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le32_to_cpu(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @le32_to_cpu(i32 %41)
  %43 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %44 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %46 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %45, i32 0, i32 7
  %47 = load i32, i32* @PERM_SYMTAB_SIZE, align 4
  %48 = call i32 @symtab_init(%struct.TYPE_4__* %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %31
  br label %225

52:                                               ; preds = %31
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le32_to_cpu(i32 %54)
  %56 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %57 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 4
  %60 = load i32, i32* %59, align 16
  %61 = call i8* @le32_to_cpu(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %14, align 4
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @le32_to_cpu(i32 %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @str_read(i8** %8, i32 %67, i8* %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  br label %225

74:                                               ; preds = %52
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %74
  %78 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %79 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %78, i32 0, i32 0
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @str_read(i8** %79, i32 %80, i8* %81, i32 %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %225

87:                                               ; preds = %77
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %16, align 4
  %90 = load %struct.policydb*, %struct.policydb** %5, align 8
  %91 = getelementptr inbounds %struct.policydb, %struct.policydb* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %95 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @hashtab_search(i32 %93, i8* %96)
  %98 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %99 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 8
  %100 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %101 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %87
  %105 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %106 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %107)
  br label %225

109:                                              ; preds = %87
  br label %110

110:                                              ; preds = %109, %74
  store i32 0, i32* %15, align 4
  br label %111

111:                                              ; preds = %127, %110
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load %struct.policydb*, %struct.policydb** %5, align 8
  %117 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %118 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = call i32 @perm_read(%struct.policydb* %116, i32 %120, i8* %121)
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %225

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %111

130:                                              ; preds = %111
  %131 = load %struct.policydb*, %struct.policydb** %5, align 8
  %132 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %133 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %132, i32 0, i32 6
  %134 = load i32, i32* %13, align 4
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @read_cons_helper(%struct.policydb* %131, i32* %133, i32 %134, i32 0, i8* %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %225

140:                                              ; preds = %130
  %141 = load %struct.policydb*, %struct.policydb** %5, align 8
  %142 = getelementptr inbounds %struct.policydb, %struct.policydb* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @POLICYDB_VERSION_VALIDATETRANS, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %168

146:                                              ; preds = %140
  %147 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @next_entry(i32* %147, i8* %148, i32 4)
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %225

153:                                              ; preds = %146
  %154 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %155 = load i32, i32* %154, align 16
  %156 = call i8* @le32_to_cpu(i32 %155)
  %157 = ptrtoint i8* %156 to i32
  store i32 %157, i32* %13, align 4
  %158 = load %struct.policydb*, %struct.policydb** %5, align 8
  %159 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %160 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %159, i32 0, i32 5
  %161 = load i32, i32* %13, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @read_cons_helper(%struct.policydb* %158, i32* %160, i32 %161, i32 1, i8* %162)
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  br label %225

167:                                              ; preds = %153
  br label %168

168:                                              ; preds = %167, %140
  %169 = load %struct.policydb*, %struct.policydb** %5, align 8
  %170 = getelementptr inbounds %struct.policydb, %struct.policydb* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @POLICYDB_VERSION_NEW_OBJECT_DEFAULTS, align 8
  %173 = icmp sge i64 %171, %172
  br i1 %173, label %174, label %197

174:                                              ; preds = %168
  %175 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %176 = load i8*, i8** %7, align 8
  %177 = call i32 @next_entry(i32* %175, i8* %176, i32 12)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %225

181:                                              ; preds = %174
  %182 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %183 = load i32, i32* %182, align 16
  %184 = call i8* @le32_to_cpu(i32 %183)
  %185 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %186 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %185, i32 0, i32 4
  store i8* %184, i8** %186, align 8
  %187 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @le32_to_cpu(i32 %188)
  %190 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %191 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %190, i32 0, i32 3
  store i8* %189, i8** %191, align 8
  %192 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @le32_to_cpu(i32 %193)
  %195 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %196 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %181, %168
  %198 = load %struct.policydb*, %struct.policydb** %5, align 8
  %199 = getelementptr inbounds %struct.policydb, %struct.policydb* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @POLICYDB_VERSION_DEFAULT_TYPE, align 8
  %202 = icmp sge i64 %200, %201
  br i1 %202, label %203, label %216

203:                                              ; preds = %197
  %204 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %205 = load i8*, i8** %7, align 8
  %206 = call i32 @next_entry(i32* %204, i8* %205, i32 4)
  store i32 %206, i32* %16, align 4
  %207 = load i32, i32* %16, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  br label %225

210:                                              ; preds = %203
  %211 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %212 = load i32, i32* %211, align 16
  %213 = call i8* @le32_to_cpu(i32 %212)
  %214 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %215 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  br label %216

216:                                              ; preds = %210, %197
  %217 = load %struct.hashtab*, %struct.hashtab** %6, align 8
  %218 = load i8*, i8** %8, align 8
  %219 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %220 = call i32 @hashtab_insert(%struct.hashtab* %217, i8* %218, %struct.class_datum* %219)
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %16, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  br label %225

224:                                              ; preds = %216
  store i32 0, i32* %4, align 4
  br label %230

225:                                              ; preds = %223, %209, %180, %166, %152, %139, %125, %104, %86, %73, %51, %30
  %226 = load i8*, i8** %8, align 8
  %227 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %228 = call i32 @cls_destroy(i8* %226, %struct.class_datum* %227, i32* null)
  %229 = load i32, i32* %16, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %225, %224, %21
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local %struct.class_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @symtab_init(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @str_read(i8**, i32, i8*, i32) #1

declare dso_local i32 @hashtab_search(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @perm_read(%struct.policydb*, i32, i8*) #1

declare dso_local i32 @read_cons_helper(%struct.policydb*, i32*, i32, i32, i8*) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.class_datum*) #1

declare dso_local i32 @cls_destroy(i8*, %struct.class_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
