; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_new_null_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_new_null_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s//null-%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s//null-%x\00", align 1
@APPARMOR_COMPLAIN = common dso_local global i32 0, align 4
@FLAG_NULL = common dso_local global i32 0, align 4
@FLAG_HAT = common dso_local global i32 0, align 4
@nulldfa = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_profile* @aa_new_null_profile(%struct.aa_profile* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca %struct.aa_profile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.aa_profile*, align 8
  %11 = alloca %struct.aa_profile*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %13, align 8
  %14 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %15 = icmp ne %struct.aa_profile* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @AA_BUG(i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %4
  %22 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %23 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = add nsw i64 %26, 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 %27, %29
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @kmalloc(i64 %30, i32 %31)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %21
  %36 = load i8*, i8** %13, align 8
  %37 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %38 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %41)
  br label %70

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %4
  %45 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %46 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %49, 2
  %51 = add nsw i64 %50, 7
  %52 = add nsw i64 %51, 8
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @kmalloc(i64 %52, i32 %53)
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  store %struct.aa_profile* null, %struct.aa_profile** %5, align 8
  br label %176

58:                                               ; preds = %44
  %59 = load i8*, i8** %13, align 8
  %60 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %61 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %65 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = call i32 @atomic_inc_return(i32* %67)
  %69 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %68)
  br label %70

70:                                               ; preds = %58, %35
  %71 = load i8*, i8** %13, align 8
  %72 = call i8* @basename(i8* %71)
  store i8* %72, i8** %12, align 8
  %73 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call %struct.aa_profile* @aa_find_child(%struct.aa_profile* %73, i8* %74)
  store %struct.aa_profile* %75, %struct.aa_profile** %11, align 8
  %76 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %77 = icmp ne %struct.aa_profile* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %167

79:                                               ; preds = %70
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call %struct.aa_profile* @aa_alloc_profile(i8* %80, i32* null, i32 %81)
  store %struct.aa_profile* %82, %struct.aa_profile** %11, align 8
  %83 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %84 = icmp ne %struct.aa_profile* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %171

86:                                               ; preds = %79
  %87 = load i32, i32* @APPARMOR_COMPLAIN, align 4
  %88 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %89 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @FLAG_NULL, align 4
  %91 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %92 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %86
  %99 = load i32, i32* @FLAG_HAT, align 4
  %100 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %101 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %99
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %98, %86
  %106 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %107 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %110 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %112 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %115 = call %struct.aa_profile* @aa_get_profile(%struct.aa_profile* %114)
  %116 = call i32 @rcu_assign_pointer(i32 %113, %struct.aa_profile* %115)
  %117 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %118 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = call %struct.TYPE_11__* @aa_get_ns(%struct.TYPE_11__* %119)
  %121 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %122 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %121, i32 0, i32 0
  store %struct.TYPE_11__* %120, %struct.TYPE_11__** %122, align 8
  %123 = load i32, i32* @nulldfa, align 4
  %124 = call i8* @aa_get_dfa(i32 %123)
  %125 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %126 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i8* %124, i8** %127, align 8
  %128 = load i32, i32* @nulldfa, align 4
  %129 = call i8* @aa_get_dfa(i32 %128)
  %130 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %131 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  %133 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %134 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %133, i32 0, i32 0
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %138 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %137, i32 0, i32 0
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @mutex_lock_nested(i32* %136, i32 %141)
  %143 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %144 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i8*, i8** %12, align 8
  %147 = call %struct.aa_profile* @__find_child(i32* %145, i8* %146)
  store %struct.aa_profile* %147, %struct.aa_profile** %10, align 8
  %148 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %149 = icmp ne %struct.aa_profile* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %105
  %151 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %152 = call i32 @aa_free_profile(%struct.aa_profile* %151)
  %153 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %154 = call %struct.aa_profile* @aa_get_profile(%struct.aa_profile* %153)
  store %struct.aa_profile* %154, %struct.aa_profile** %11, align 8
  br label %161

155:                                              ; preds = %105
  %156 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %157 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %160 = call i32 @__add_profile(i32* %158, %struct.aa_profile* %159)
  br label %161

161:                                              ; preds = %155, %150
  %162 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %163 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %162, i32 0, i32 0
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = call i32 @mutex_unlock(i32* %165)
  br label %167

167:                                              ; preds = %161, %78
  %168 = load i8*, i8** %13, align 8
  %169 = call i32 @kfree(i8* %168)
  %170 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  store %struct.aa_profile* %170, %struct.aa_profile** %5, align 8
  br label %176

171:                                              ; preds = %85
  %172 = load i8*, i8** %13, align 8
  %173 = call i32 @kfree(i8* %172)
  %174 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %175 = call i32 @aa_free_profile(%struct.aa_profile* %174)
  store %struct.aa_profile* null, %struct.aa_profile** %5, align 8
  br label %176

176:                                              ; preds = %171, %167, %57
  %177 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  ret %struct.aa_profile* %177
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local %struct.aa_profile* @aa_find_child(%struct.aa_profile*, i8*) #1

declare dso_local %struct.aa_profile* @aa_alloc_profile(i8*, i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.aa_profile*) #1

declare dso_local %struct.aa_profile* @aa_get_profile(%struct.aa_profile*) #1

declare dso_local %struct.TYPE_11__* @aa_get_ns(%struct.TYPE_11__*) #1

declare dso_local i8* @aa_get_dfa(i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.aa_profile* @__find_child(i32*, i8*) #1

declare dso_local i32 @aa_free_profile(%struct.aa_profile*) #1

declare dso_local i32 @__add_profile(i32*, %struct.aa_profile*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
