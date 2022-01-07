; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_acl.c_jffs2_acl_from_medium.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_acl.c_jffs2_acl_from_medium.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i8* }
%struct.jffs2_acl_header = type { i32 }
%struct.jffs2_acl_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@JFFS2_ACL_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid ACL version. (=%u)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (i8*, i64)* @jffs2_acl_from_medium to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @jffs2_acl_from_medium(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.jffs2_acl_header*, align 8
  %8 = alloca %struct.jffs2_acl_entry*, align 8
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr i8, i8* %13, i64 %14
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.jffs2_acl_header*
  store %struct.jffs2_acl_header* %17, %struct.jffs2_acl_header** %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %173

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.posix_acl* @ERR_PTR(i32 %26)
  store %struct.posix_acl* %27, %struct.posix_acl** %3, align 8
  br label %173

28:                                               ; preds = %21
  %29 = load %struct.jffs2_acl_header*, %struct.jffs2_acl_header** %7, align 8
  %30 = getelementptr inbounds %struct.jffs2_acl_header, %struct.jffs2_acl_header* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @je32_to_cpu(i32 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @JFFS2_ACL_VERSION, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @JFFS2_WARNING(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.posix_acl* @ERR_PTR(i32 %40)
  store %struct.posix_acl* %41, %struct.posix_acl** %3, align 8
  br label %173

42:                                               ; preds = %28
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr i8, i8* %43, i64 4
  store i8* %44, i8** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @jffs2_acl_count(i64 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.posix_acl* @ERR_PTR(i32 %51)
  store %struct.posix_acl* %52, %struct.posix_acl** %3, align 8
  br label %173

53:                                               ; preds = %42
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %173

57:                                               ; preds = %53
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.posix_acl* @posix_acl_alloc(i32 %58, i32 %59)
  store %struct.posix_acl* %60, %struct.posix_acl** %9, align 8
  %61 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %62 = icmp ne %struct.posix_acl* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.posix_acl* @ERR_PTR(i32 %65)
  store %struct.posix_acl* %66, %struct.posix_acl** %3, align 8
  br label %173

67:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %157, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %160

72:                                               ; preds = %68
  %73 = load i8*, i8** %4, align 8
  %74 = bitcast i8* %73 to %struct.jffs2_acl_entry*
  store %struct.jffs2_acl_entry* %74, %struct.jffs2_acl_entry** %8, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr i8, i8* %75, i64 4
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ugt i8* %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %167

80:                                               ; preds = %72
  %81 = load %struct.jffs2_acl_entry*, %struct.jffs2_acl_entry** %8, align 8
  %82 = getelementptr inbounds %struct.jffs2_acl_entry, %struct.jffs2_acl_entry* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @je16_to_cpu(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %87 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 8
  %93 = load %struct.jffs2_acl_entry*, %struct.jffs2_acl_entry** %8, align 8
  %94 = getelementptr inbounds %struct.jffs2_acl_entry, %struct.jffs2_acl_entry* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @je16_to_cpu(i32 %95)
  %97 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %98 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  store i8* %96, i8** %103, align 8
  %104 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %105 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %155 [
    i32 128, label %112
    i32 132, label %112
    i32 131, label %112
    i32 130, label %112
    i32 129, label %115
    i32 133, label %135
  ]

112:                                              ; preds = %80, %80, %80, %80
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr i8, i8* %113, i64 4
  store i8* %114, i8** %4, align 8
  br label %156

115:                                              ; preds = %80
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr i8, i8* %116, i64 12
  store i8* %117, i8** %4, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = icmp ugt i8* %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %167

122:                                              ; preds = %115
  %123 = load %struct.jffs2_acl_entry*, %struct.jffs2_acl_entry** %8, align 8
  %124 = getelementptr inbounds %struct.jffs2_acl_entry, %struct.jffs2_acl_entry* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @je32_to_cpu(i32 %125)
  %127 = call i32 @make_kuid(i32* @init_user_ns, i64 %126)
  %128 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %129 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  store i32 %127, i32* %134, align 8
  br label %156

135:                                              ; preds = %80
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr i8, i8* %136, i64 12
  store i8* %137, i8** %4, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = icmp ugt i8* %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %167

142:                                              ; preds = %135
  %143 = load %struct.jffs2_acl_entry*, %struct.jffs2_acl_entry** %8, align 8
  %144 = getelementptr inbounds %struct.jffs2_acl_entry, %struct.jffs2_acl_entry* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @je32_to_cpu(i32 %145)
  %147 = call i32 @make_kgid(i32* @init_user_ns, i64 %146)
  %148 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %149 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  store i32 %147, i32* %154, align 4
  br label %156

155:                                              ; preds = %80
  br label %167

156:                                              ; preds = %142, %122, %112
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %68

160:                                              ; preds = %68
  %161 = load i8*, i8** %4, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = icmp ne i8* %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %167

165:                                              ; preds = %160
  %166 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  store %struct.posix_acl* %166, %struct.posix_acl** %3, align 8
  br label %173

167:                                              ; preds = %164, %155, %141, %121, %79
  %168 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %169 = call i32 @posix_acl_release(%struct.posix_acl* %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  %172 = call %struct.posix_acl* @ERR_PTR(i32 %171)
  store %struct.posix_acl* %172, %struct.posix_acl** %3, align 8
  br label %173

173:                                              ; preds = %167, %165, %63, %56, %49, %36, %24, %20
  %174 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %174
}

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i64 @je32_to_cpu(i32) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i64) #1

declare dso_local i32 @jffs2_acl_count(i64) #1

declare dso_local %struct.posix_acl* @posix_acl_alloc(i32, i32) #1

declare dso_local i8* @je16_to_cpu(i32) #1

declare dso_local i32 @make_kuid(i32*, i64) #1

declare dso_local i32 @make_kgid(i32*, i64) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
