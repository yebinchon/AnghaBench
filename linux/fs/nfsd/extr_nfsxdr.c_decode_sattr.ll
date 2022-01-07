; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_decode_sattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_decode_sattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iattr = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.user_namespace = type { i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.iattr*, %struct.user_namespace*)* @decode_sattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_sattr(i32* %0, %struct.iattr* %1, %struct.user_namespace* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  store %struct.user_namespace* %2, %struct.user_namespace** %6, align 8
  %9 = load %struct.iattr*, %struct.iattr** %5, align 8
  %10 = getelementptr inbounds %struct.iattr, %struct.iattr* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* %11, align 4
  %14 = call i32 @ntohl(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 65535
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* @ATTR_MODE, align 4
  %21 = load %struct.iattr*, %struct.iattr** %5, align 8
  %22 = getelementptr inbounds %struct.iattr, %struct.iattr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.iattr*, %struct.iattr** %5, align 8
  %27 = getelementptr inbounds %struct.iattr, %struct.iattr* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %19, %16, %3
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %4, align 8
  %31 = load i32, i32* %29, align 4
  %32 = call i32 @ntohl(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @make_kuid(%struct.user_namespace* %35, i32 %36)
  %38 = load %struct.iattr*, %struct.iattr** %5, align 8
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.iattr*, %struct.iattr** %5, align 8
  %41 = getelementptr inbounds %struct.iattr, %struct.iattr* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @uid_valid(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load i32, i32* @ATTR_UID, align 4
  %47 = load %struct.iattr*, %struct.iattr** %5, align 8
  %48 = getelementptr inbounds %struct.iattr, %struct.iattr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %34
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %4, align 8
  %55 = load i32, i32* %53, align 4
  %56 = call i32 @ntohl(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @make_kgid(%struct.user_namespace* %59, i32 %60)
  %62 = load %struct.iattr*, %struct.iattr** %5, align 8
  %63 = getelementptr inbounds %struct.iattr, %struct.iattr* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.iattr*, %struct.iattr** %5, align 8
  %65 = getelementptr inbounds %struct.iattr, %struct.iattr* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @gid_valid(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load i32, i32* @ATTR_GID, align 4
  %71 = load %struct.iattr*, %struct.iattr** %5, align 8
  %72 = getelementptr inbounds %struct.iattr, %struct.iattr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %58
  br label %76

76:                                               ; preds = %75, %52
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %4, align 8
  %79 = load i32, i32* %77, align 4
  %80 = call i32 @ntohl(i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i32, i32* @ATTR_SIZE, align 4
  %84 = load %struct.iattr*, %struct.iattr** %5, align 8
  %85 = getelementptr inbounds %struct.iattr, %struct.iattr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.iattr*, %struct.iattr** %5, align 8
  %90 = getelementptr inbounds %struct.iattr, %struct.iattr* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %82, %76
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %4, align 8
  %94 = load i32, i32* %92, align 4
  %95 = call i32 @ntohl(i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %4, align 8
  %98 = load i32, i32* %96, align 4
  %99 = call i32 @ntohl(i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %122

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load i32, i32* @ATTR_ATIME, align 4
  %107 = load i32, i32* @ATTR_ATIME_SET, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.iattr*, %struct.iattr** %5, align 8
  %110 = getelementptr inbounds %struct.iattr, %struct.iattr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.iattr*, %struct.iattr** %5, align 8
  %115 = getelementptr inbounds %struct.iattr, %struct.iattr* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  %118 = mul nsw i32 %117, 1000
  %119 = load %struct.iattr*, %struct.iattr** %5, align 8
  %120 = getelementptr inbounds %struct.iattr, %struct.iattr* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %105, %102, %91
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %4, align 8
  %125 = load i32, i32* %123, align 4
  %126 = call i32 @ntohl(i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %4, align 8
  %129 = load i32, i32* %127, align 4
  %130 = call i32 @ntohl(i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, -1
  br i1 %132, label %133, label %165

133:                                              ; preds = %122
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, -1
  br i1 %135, label %136, label %165

136:                                              ; preds = %133
  %137 = load i32, i32* @ATTR_MTIME, align 4
  %138 = load i32, i32* @ATTR_MTIME_SET, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.iattr*, %struct.iattr** %5, align 8
  %141 = getelementptr inbounds %struct.iattr, %struct.iattr* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.iattr*, %struct.iattr** %5, align 8
  %146 = getelementptr inbounds %struct.iattr, %struct.iattr* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* %8, align 4
  %149 = mul nsw i32 %148, 1000
  %150 = load %struct.iattr*, %struct.iattr** %5, align 8
  %151 = getelementptr inbounds %struct.iattr, %struct.iattr* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %153, 1000000
  br i1 %154, label %155, label %164

155:                                              ; preds = %136
  %156 = load i32, i32* @ATTR_ATIME_SET, align 4
  %157 = load i32, i32* @ATTR_MTIME_SET, align 4
  %158 = or i32 %156, %157
  %159 = xor i32 %158, -1
  %160 = load %struct.iattr*, %struct.iattr** %5, align 8
  %161 = getelementptr inbounds %struct.iattr, %struct.iattr* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %155, %136
  br label %165

165:                                              ; preds = %164, %133, %122
  %166 = load i32*, i32** %4, align 8
  ret i32* %166
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i32) #1

declare dso_local i64 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(%struct.user_namespace*, i32) #1

declare dso_local i64 @gid_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
