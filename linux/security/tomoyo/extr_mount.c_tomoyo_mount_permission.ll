; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_mount.c_tomoyo_mount_permission.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_mount.c_tomoyo_mount_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.tomoyo_request_info = type { i32 }

@TOMOYO_MAC_FILE_MOUNT = common dso_local global i32 0, align 4
@TOMOYO_CONFIG_DISABLED = common dso_local global i64 0, align 8
@MS_MGC_MSK = common dso_local global i64 0, align 8
@MS_MGC_VAL = common dso_local global i64 0, align 8
@MS_REMOUNT = common dso_local global i64 0, align 8
@tomoyo_mounts = common dso_local global i8** null, align 8
@TOMOYO_MOUNT_REMOUNT = common dso_local global i64 0, align 8
@MS_BIND = common dso_local global i64 0, align 8
@TOMOYO_MOUNT_BIND = common dso_local global i64 0, align 8
@MS_SHARED = common dso_local global i64 0, align 8
@MS_PRIVATE = common dso_local global i64 0, align 8
@MS_SLAVE = common dso_local global i64 0, align 8
@MS_UNBINDABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TOMOYO_MOUNT_MAKE_SHARED = common dso_local global i64 0, align 8
@TOMOYO_MOUNT_MAKE_PRIVATE = common dso_local global i64 0, align 8
@TOMOYO_MOUNT_MAKE_SLAVE = common dso_local global i64 0, align 8
@TOMOYO_MOUNT_MAKE_UNBINDABLE = common dso_local global i64 0, align 8
@MS_MOVE = common dso_local global i64 0, align 8
@TOMOYO_MOUNT_MOVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_mount_permission(i8* %0, %struct.path* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tomoyo_request_info, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.path* %1, %struct.path** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* @TOMOYO_MAC_FILE_MOUNT, align 4
  %16 = call i64 @tomoyo_init_request_info(%struct.tomoyo_request_info* %12, i32* null, i32 %15)
  %17 = load i64, i64* @TOMOYO_CONFIG_DISABLED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %197

20:                                               ; preds = %5
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @MS_MGC_MSK, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* @MS_MGC_VAL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i64, i64* @MS_MGC_MSK, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %10, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @MS_REMOUNT, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i8**, i8*** @tomoyo_mounts, align 8
  %38 = load i64, i64* @TOMOYO_MOUNT_REMOUNT, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %9, align 8
  %41 = load i64, i64* @MS_REMOUNT, align 8
  %42 = xor i64 %41, -1
  %43 = load i64, i64* %10, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %10, align 8
  br label %183

45:                                               ; preds = %31
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @MS_BIND, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i8**, i8*** @tomoyo_mounts, align 8
  %52 = load i64, i64* @TOMOYO_MOUNT_BIND, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %9, align 8
  %55 = load i64, i64* @MS_BIND, align 8
  %56 = xor i64 %55, -1
  %57 = load i64, i64* %10, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %10, align 8
  br label %182

59:                                               ; preds = %45
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @MS_SHARED, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @MS_PRIVATE, align 8
  %67 = load i64, i64* @MS_SLAVE, align 8
  %68 = or i64 %66, %67
  %69 = load i64, i64* @MS_UNBINDABLE, align 8
  %70 = or i64 %68, %69
  %71 = and i64 %65, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %197

76:                                               ; preds = %64
  %77 = load i8**, i8*** @tomoyo_mounts, align 8
  %78 = load i64, i64* @TOMOYO_MOUNT_MAKE_SHARED, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %9, align 8
  %81 = load i64, i64* @MS_SHARED, align 8
  %82 = xor i64 %81, -1
  %83 = load i64, i64* %10, align 8
  %84 = and i64 %83, %82
  store i64 %84, i64* %10, align 8
  br label %181

85:                                               ; preds = %59
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @MS_PRIVATE, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %85
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @MS_SHARED, align 8
  %93 = load i64, i64* @MS_SLAVE, align 8
  %94 = or i64 %92, %93
  %95 = load i64, i64* @MS_UNBINDABLE, align 8
  %96 = or i64 %94, %95
  %97 = and i64 %91, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %197

102:                                              ; preds = %90
  %103 = load i8**, i8*** @tomoyo_mounts, align 8
  %104 = load i64, i64* @TOMOYO_MOUNT_MAKE_PRIVATE, align 8
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %9, align 8
  %107 = load i64, i64* @MS_PRIVATE, align 8
  %108 = xor i64 %107, -1
  %109 = load i64, i64* %10, align 8
  %110 = and i64 %109, %108
  store i64 %110, i64* %10, align 8
  br label %180

111:                                              ; preds = %85
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @MS_SLAVE, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %111
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @MS_SHARED, align 8
  %119 = load i64, i64* @MS_PRIVATE, align 8
  %120 = or i64 %118, %119
  %121 = load i64, i64* @MS_UNBINDABLE, align 8
  %122 = or i64 %120, %121
  %123 = and i64 %117, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %197

128:                                              ; preds = %116
  %129 = load i8**, i8*** @tomoyo_mounts, align 8
  %130 = load i64, i64* @TOMOYO_MOUNT_MAKE_SLAVE, align 8
  %131 = getelementptr inbounds i8*, i8** %129, i64 %130
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %9, align 8
  %133 = load i64, i64* @MS_SLAVE, align 8
  %134 = xor i64 %133, -1
  %135 = load i64, i64* %10, align 8
  %136 = and i64 %135, %134
  store i64 %136, i64* %10, align 8
  br label %179

137:                                              ; preds = %111
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* @MS_UNBINDABLE, align 8
  %140 = and i64 %138, %139
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %163

142:                                              ; preds = %137
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* @MS_SHARED, align 8
  %145 = load i64, i64* @MS_PRIVATE, align 8
  %146 = or i64 %144, %145
  %147 = load i64, i64* @MS_SLAVE, align 8
  %148 = or i64 %146, %147
  %149 = and i64 %143, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %6, align 4
  br label %197

154:                                              ; preds = %142
  %155 = load i8**, i8*** @tomoyo_mounts, align 8
  %156 = load i64, i64* @TOMOYO_MOUNT_MAKE_UNBINDABLE, align 8
  %157 = getelementptr inbounds i8*, i8** %155, i64 %156
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %9, align 8
  %159 = load i64, i64* @MS_UNBINDABLE, align 8
  %160 = xor i64 %159, -1
  %161 = load i64, i64* %10, align 8
  %162 = and i64 %161, %160
  store i64 %162, i64* %10, align 8
  br label %178

163:                                              ; preds = %137
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* @MS_MOVE, align 8
  %166 = and i64 %164, %165
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load i8**, i8*** @tomoyo_mounts, align 8
  %170 = load i64, i64* @TOMOYO_MOUNT_MOVE, align 8
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %9, align 8
  %173 = load i64, i64* @MS_MOVE, align 8
  %174 = xor i64 %173, -1
  %175 = load i64, i64* %10, align 8
  %176 = and i64 %175, %174
  store i64 %176, i64* %10, align 8
  br label %177

177:                                              ; preds = %168, %163
  br label %178

178:                                              ; preds = %177, %154
  br label %179

179:                                              ; preds = %178, %128
  br label %180

180:                                              ; preds = %179, %102
  br label %181

181:                                              ; preds = %180, %76
  br label %182

182:                                              ; preds = %181, %50
  br label %183

183:                                              ; preds = %182, %36
  %184 = load i8*, i8** %9, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %183
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %187

187:                                              ; preds = %186, %183
  %188 = call i32 (...) @tomoyo_read_lock()
  store i32 %188, i32* %14, align 4
  %189 = load i8*, i8** %7, align 8
  %190 = load %struct.path*, %struct.path** %8, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = load i64, i64* %10, align 8
  %193 = call i32 @tomoyo_mount_acl(%struct.tomoyo_request_info* %12, i8* %189, %struct.path* %190, i8* %191, i64 %192)
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @tomoyo_read_unlock(i32 %194)
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %6, align 4
  br label %197

197:                                              ; preds = %187, %151, %125, %99, %73, %19
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local i64 @tomoyo_init_request_info(%struct.tomoyo_request_info*, i32*, i32) #1

declare dso_local i32 @tomoyo_read_lock(...) #1

declare dso_local i32 @tomoyo_mount_acl(%struct.tomoyo_request_info*, i8*, %struct.path*, i8*, i64) #1

declare dso_local i32 @tomoyo_read_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
